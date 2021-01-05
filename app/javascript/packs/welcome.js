console.log("packs/welcome")

document.addEventListener('DOMContentLoaded', () => {
    console.log('DOMCONTENTLOADED')
    
    //Elements 
    let formButton = document.getElementById("footer-form-btn")
    let formInput = document.getElementById("footer-form-input")
    let footerStars = document.getElementsByClassName("footer-rating-stars")

    //Event Listeners 
    formButton.addEventListener("click", (e) => handleClick(e))
    footerStarListeners(footerStars)

    function footerStarListeners(stars) {
        let length = stars.length 
        let i = 0 
        while ( i < length ) {
            stars[i].addEventListener("mouseover", (e) => handleStarsHover(e, "mouseover"))
            stars[i].addEventListener("mouseleave", (e) => handleStarsHover(e, "mouseleave"))
            i++ 
        }
    }

    function handleStarsHover(e, typeOfEvent) {
        let star = e.target.id.split('-')[1]
        const fillStars = (num, event)=> {
            let footerStars = document.getElementsByClassName("footer-rating-stars")
            let i = 0 
            while (i < num) {
                if (typeOfEvent === 'mouseover') {
                    footerStars[i].classList.replace("far", "fas")
                }
                else if (typeOfEvent === 'mouseleave') {
                    footerStars[i].classList.replace("fas", "far")
                }
                i++
            }
        }
        if (star === "5") {
            fillStars(5, typeOfEvent)
        }
        else if (star === "4") {
            fillStars(4, typeOfEvent)
        }
        else if (star === "3") {
            fillStars(3, typeOfEvent)
        }
        else if (star === "2") {
            fillStars(2, typeOfEvent)
        }
        else if (star === "1") {
            fillStars(1, typeOfEvent)
        }
    }

    function handleClick(e) {
        alert("Thank You For Subscribing!!")
        formInput.value = "" 
    }

})


