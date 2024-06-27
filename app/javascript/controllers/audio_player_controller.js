import {Controller} from "@hotwired/stimulus"

import WaveSurfer from "wavesurfer.js";

// Connects to data-controller="audio-player"
export default class extends Controller {
    static values = {url: String,}
    static targets = ["preview"];

    connect() {
        this.wavesurfer = WaveSurfer.create({
            container: this.previewTarget,
            waveColor: "#ff8000",
            progressColor: "#383351",
            barWidth: 2,
            barRadius: 2,
            barGap: 1,
            url: this.urlValue,
        });
    }

    play(event) {
        event.preventDefault();
        this.wavesurfer.play()
    }

    pause(event) {
        event.preventDefault();
        this.wavesurfer.pause()
    }

    reset(event) {
        event.preventDefault();
        this.wavesurfer.playPause()
    }

    volume(event) {
        event.preventDefault();
        this.wavesurfer.playPause()
    }

    muted(event) {
        event.preventDefault();
        this.toggleMute()
    }

    loop(event) {
        event.preventDefault();
        this.wavesurfer.playPause()
    }

    toggleMute() {
        const isMuted = this.wavesurfer.getMuted()

        if (isMuted) {
            this.wavesurfer.setMuted(false)
        } else {
            this.wavesurfer.setMuted(true)
        }
    }
}
