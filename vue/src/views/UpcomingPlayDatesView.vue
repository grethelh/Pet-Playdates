<template>
    <div class="container">
        <h1 class="text-center mb-4">Upcoming Play Dates</h1>
        <div class="alert alert-success alert-dismissible fade show w-50" role="alert" v-if="registrationSuccessful">
            <strong>Get Ready to Play!</strong> Your dog has been registered for the play date!
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>

        <CreatePlayDateButton />

        <div class="d-flex flex-wrap flex-row justify-content-center">
            <PlayDateCards class="w-100 playDateCards" v-for="playdate in playDates" :key="playdate.id"
                :playdate="playdate" />
        </div>

    </div>
</template>

<script>
import PlayDateService from "../services/PlayDateService";
import PlayDateCards from "../components/PlayDateCards.vue";
import LocationService from "../services/LocationService";
import CreatePlayDateButton from "../components/CreatePlayDateButton.vue";
import PetService from "../services/PetService";

export default {
    data() {
        return {
            showModal: false,
            registrationSuccessful: false,
            playDates: []
        }
    },
    components: {
        PlayDateCards, CreatePlayDateButton
    },
    created() {
        LocationService.getLocations()
            .then(response => {
                this.$store.state.locations = response.data;
                PetService.getUserPets(this.$store.state.user.id)
                    .then(response => {
                        this.$store.state.pets = response.data
                    });
                PlayDateService.getUpcomingPlayDates()
                    .then(response => {
                        this.playDates = response.data;
                    });
            })
    }



}
</script>

<style scoped>
i {
    font-size: 5rem;
}

.playDateCards {
    /* max-width: 100%; */
    flex-basis: 0;
    max-width: 30%;
    min-width: 30%;
}
</style>