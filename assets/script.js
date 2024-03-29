$(document).ready(function() {
    window.addEventListener('scroll',function (){
        $scrolled = window.scrollY;
        if($scrolled > 150){
            $('.topNav').addClass('shadow-lg bg-opacity-100')
        }else{
            $('.topNav').removeClass('shadow-lg bg-opacity-100')
        }
    })
    $scrolled = window.scrollY;
    if($scrolled > 150){
        $('.topNav').addClass('shadow-lg bg-opacity-100')
    }else{
        $('.topNav').removeClass('shadow-lg bg-opacity-100')
    }
    $('#toggler').on('click', function () {
        $('#togglerElement').toggleClass('hidden')
        $('#togglerElement').toggleClass('flex')
    })

    
    $('form[name=auth]').on('submit', function (ev){
        ev.preventDefault();
        $formData = $(this)
        $data = $(this).serialize();
        $.ajax({
            type: 'post',
            url:'assets/backend/qureies.php',
            data: $data,
            dataType:'json',
            success: function(res){
                if(res.msg == 'login'){
                    window.location.href = 'dashborad.php'
                }else if(res.msg == 'logout'){
                    window.location.href = 'dashborad.php'
                }else{
                    $('.msg').text(res.msg)
                    $formData.trigger('reset')
                }
            },
            error : function(e){
                console.log(e);
            }
        })
    });
    $('.bars').on('click',function(){
        $('.menu').toggleClass('hidden flex')
        $('.sidenav').toggleClass('-ml-72')
    })

    $('.VM').on('click',function(){
        var data = {
            action : 'VM',
            val : $(this).attr('id')
        }
        $.ajax({
            type: "post",
            url: "assets/backend/qureies.php",
            data: data,
            dataType: "json",
            success: function (response) {
                $('.data').html(
                    `
                        <div class="">Booked By : <span>${response.data.bookedBy}</span></div>
                        <div class="">Phone : <span>${response.data.phone}</span></div>
                        <div class="">E-mail : <span>${response.data.email}</span></div>
                        <div class="">Address  : <span>${response.ext.place}, ${response.ext.location} </span></div>
                        <div class="">Number of Rooms : <span>${response.ext.numberRoom}</span></div>
                        <div class="">Amount Paid : <span>&#8358;${response.ext.price}</span></div>
                        <div class="">Duration : <span>1 Year</span></div>
                        <div class="">Date Booked : <span>${response.data.crt_at}</span></div> 
                    `
                )
                $('.VMM').removeClass('hidden')
            }
        });
    })

    $('.VMMC').on('click',function(){
        $('.VMM').addClass('hidden')
    })


    $('.view-prop').on('click', function(){
        $('.view').html(
            `<div class="fixed w-screen px-3 h-screen bg-black bg-opacity-40 flex justify-center items-center" style="z-index:9999999">
                <div class="w-full">
                    <div class="max-w-2xl mx-auto bg-white p-3">
                        <div class="">
                            <div class="h-96 w-full bg-gray-300 relative">
                                <i class="ri-close-line absolute right-1 text-xl cursor-pointer"></i> 
                            </div>
                        </div>
                        <div class="flex gap-3 justify-center pt-3">
                            <div class="h-20 w-20 bg-gray-200 cursor-pointer"></div>
                            <div class="h-20 w-20 bg-gray-200 cursor-pointer"></div>
                            <div class="h-20 w-20 bg-gray-200 cursor-pointer"></div>
                        </div>
                    </div>
                </div>
            </div>`
        )
    })

    $('.view').on('click','.ri-close-line', function(){
        $('.view').html('')
    })
    
})

