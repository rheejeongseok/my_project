$(function(){
	
	$('.loading_img').css('display','block');
	
	setTimeout(function() {
	
	$('.loading_img').css('display','none');
	$('.wrap').css('display','block');
	
	}, 3000)
	
	$(window).load(function(){
		
		$('.page_nav').mouseenter(function() {
			$('.nav_list').stop().slideDown(500);
			
		}).mouseleave(function(){
			$('.nav_list').stop().slideUp(500);
			
		})

		$('.logo .title').text($('.contents>div.on').find('.content_title').text());

	    $('.nav_list a').click(function(){
	        var listidx = $(this).index()
	        var listonidx = $('.nav_list a.on').index()
	        var contentOn = $('.contents .on').index()
	        var heightVal = $('html').height()
	        var c2ot = $('.content2').offset().top;
	        var c4ot = $('.content4').offset().top;
	        console.log(listonidx)
	        console.log(listidx)

	        if(listidx > listonidx){

	        $(this).addClass("on").siblings().removeClass("on")
	        $('.contents .on').stop().animate({'top':-heightVal},1000).removeClass('on')
	        $('.contents>div').eq(listidx).addClass('on').css({'top':heightVal,'display':'table'}).stop().animate({'top':0},1000)
	        $('.logo .title').text($('.contents>div.on').find('.content_title').text());

		        if(c2ot == heightVal || $('.content2').is('.on')){
		    		$('.content2 .main_left').animate({
		    			left:'0'
		    		},1000)
		    		$('.content2 .main_right').animate({
		    			right:'0'
		    		},1000)
				}else if(!$('.content2').is('.on')){
					console.log("aaa")
					$('.content2 .main_left').animate({
		    			left:'-100%'
		    		},1000)
		    		$('.content2 .main_right').animate({
		    			right:'-100%'
		    		},1000)
				}
				 if(c4ot == heightVal || $('.content4').is('.on')){
		    		$('.content4 .main_left').animate({
		    			left:'0'
		    		},1000)
		    		$('.content4 .main_right').animate({
		    			right:'0'
		    		},1000)
				}else if(!$('.content4').is('.on')){
					console.log("aaa")
					$('.content4 .main_left').animate({
		    			left:'-100%'
		    		},1000)
		    		$('.content4 .main_right').animate({
		    			right:'-100%'
		    		},1000)
				}
				if(!$('.content1').is('.on')){
					$('.img1').animate({
						right:'-35%',
						bottom:'-55%'
					})
					$('.img2').animate({
						left:'-39%',
						top:'-70%'
					})
					$('.img3').animate({
						left:'-31%',
						bottom:'-80%'
					})
				}else if($('.content1').is('.on')){
					$('.img1').animate({
						right:'-18%',
						bottom:'-37%'
					})
					$('.img2').animate({
						left:'-22%',
						top:'-52%'
					})
					$('.img3').animate({
						left:'-14%',
						bottom:'-62%'
					})
				}
	        }

	        else if(listonidx > listidx){

	        $(this).addClass("on").siblings().removeClass("on")
	        $('.contents .on').stop().animate({'top':heightVal},1000).removeClass('on')
	        $('.contents>div').eq(listidx).addClass('on').css({'top':-heightVal,'display':'table'}).stop().animate({'top':0},1000)
	        $('.logo .title').text($('.contents>div.on').find('.content_title').text());

		        if(c2ot == heightVal || $('.content2').is('.on')){
		    		$('.content2 .main_left').animate({
		    			left:'0'
		    		},1000)
		    		$('.content2 .main_right').animate({
		    			right:'0'
		    		},1000)
				}else if(!$('.content2').is('.on')){
					console.log("aaa")
					$('.content2 .main_left').animate({
		    			left:'-100%'
		    		},1000)
		    		$('.content2 .main_right').animate({
		    			right:'-100%'
		    		},1000)
				}
				if(!$('.content1').is('.on')){

					$('.img1').animate({
						right:'-35%',
						bottom:'-55%'
					})
					$('.img2').animate({
						left:'-39%',
						top:'-70%'
					})
					$('.img3').animate({
						left:'-31%',
						bottom:'-80%'
					})
				}else if($('.content1').is('.on')){
					$('.img1').animate({
						right:'-18%',
						bottom:'-37%'
					})
					$('.img2').animate({
						left:'-22%',
						top:'-52%'
					})
					$('.img3').animate({
						left:'-14%',
						bottom:'-62%'
					})
				}
	        }


	    })

	    $('.content1 .main_scroll').click(function(){

	        var heightVal = $('html').height()

	        $('.nav_list a').eq(1).addClass('on').siblings().removeClass('on')
	        $('.contents .on').stop().animate({'top':-heightVal}).removeClass('on')
	        $('.contents>div').eq(1).addClass('on').css({'top':heightVal,'display':'table'}).stop().animate({'top':0})


	    })


	    $("body").on("mousewheel", function(event){

	        var wheelidx =  event.originalEvent.wheelDelta;
	        console.log(wheelidx);
	        var idx = $('.content .on').index();
	        var heightVal = $('html').height();

	        var asdf = $('.contents>div.on').offset().top;

	        var c2ot = $('.content2').offset().top;
	        var c4ot = $('.content4').offset().top;
	        var c5ot = $('.content5').offset().top;

	        console.log(asdf);
	        if(wheelidx < 0 && asdf == 0){

	            if($('.content4').is('.on')){

	                return false;

	            }
	            else {
	            $('.nav_list a.on').removeClass('on').next().addClass('on');
	            $('.contents .on').stop().animate({'top':-heightVal},1000).removeClass('on')
	            .next().addClass('on').css({'top':heightVal,'display':'table'}).stop().animate({'top':0},1000).siblings('div').css('display','none');
	            $('.logo .title').text($('.contents>div.on').find('.content_title').text());


	            }


	        }

	        else if(wheelidx > 0 && asdf == 0){

	            if($('.content1').is('.on')){

	                return false;

	            }
	            else{
	            $('.nav_list a.on').removeClass('on').prev().addClass('on');
	            $('.contents .on').stop().animate({'top':heightVal},1000).removeClass('on')
	            .prev().addClass('on').css({'top':-heightVal,'display':'table'}).stop().animate({'top':0},1000).siblings('div').css('display','none');
	            $('.logo .title').text($('.contents>div.on').find('.content_title').text());

	            }
	        }

	        if(c2ot == heightVal || $('.content2').is('.on')){
	        	
	        	setTimeout(function() {
	        		$('.content2 ul:first-child').animate({"opacity":1}).queue(function(){
	        			$('.content2 ul:last-child').animate({"opacity":1})
	        		})
	        	},1200)
	        	
			}
	        
	        if(c5ot == heightVal || $('.content5').is('.on')){
	        	
	        	setTimeout(function() {
	        		$('.content5 ul:first-child').animate({"opacity":1}).queue(function(){
	        			$('.content5 ul:last-child').animate({"opacity":1})
	        		})
	        	},1200)
	        	
			}

			if(c4ot == heightVal || $('.content4').is('.on')){
	    		$('.content4 .main_left').animate({
	    			left:'0'
	    		},1000)
	    		$('.content4 .main_right').animate({
	    			right:'0'
	    		},1000)
			}else if(!$('.content4').is('.on')){
				console.log("aaa")
				$('.content4 .main_left').animate({
	    			left:'-100%'
	    		},1000)
	    		$('.content4 .main_right').animate({
	    			right:'-100%'
	    		},1000)
			}

			if(!$('.content1').is('.on')){

				$('.img1').animate({
					right:'-35%',
					bottom:'-55%'
				})
				$('.img2').animate({
					left:'-39%',
					top:'-70%'
				})
				$('.img3').animate({
					left:'-31%',
					bottom:'-80%'
				})



			}else if($('.content1').is('.on')){
				$('.img1').animate({
					right:'-18%',
					bottom:'-37%'
				})
				$('.img2').animate({
					left:'-22%',
					top:'-52%'
				})
				$('.img3').animate({
					left:'-14%',
					bottom:'-62%'
				})
			}
			
			
	    })


	    $(window).resize(function(){
	        console.log($('html').width())

	        var htmlW = $('html').width();

	        if(htmlW < 761 && $('.gnb_layer').is('.layer_on')){
	            $('.gnb_section').css('display','none');
	            $('.gnb_layer').css('display','none').removeClass('layer_on').addClass('layer_off');


	        }else if(htmlW >761 && $('.gnb_layer').is('.layer_off')){
	            $('.gnb_section').css('display','block');
	            $('.gnb_layer').css('display','block').removeClass('layer_off').addClass('layer_on');

	        }

	    })


	    $('.content1 .main').mouseenter(function() {
	    	console.log("마우스 인");
	    	$('.main .title').stop().animate({
	    		translateX:'-48%'
	    	})
	    	$('.title_sub').stop().slideDown(500)

			$('.img1').stop().animate({
				right:'-9%',
				bottom:'-28%'
			})

			$('.img2').stop().animate({
				left:'-12%',
				top:'-43%'
			})

			$('.img3').stop().animate({
				left:'-6%',
				bottom:'-50%'
			})

	    }).mouseleave(function() {
	    	$('.main .title').stop().animate({
	    		translateX:'-50%'
	    	})
	    	$('.title_sub').stop().slideUp(500)

	    	$('.img1').stop().animate({
				right:'-15%',
				bottom:'-34%'
			})

			$('.img2').stop().animate({
				left:'-19%',
				top:'-49%'
			})

			$('.img3').stop().animate({
				left:'-11%',
				bottom:'-59%'
			})
	    });

	    $('.content1 .mouse').mouseenter(function(){
	    	$(this).stop().animate({
	    		bottom:'8%'
	    	},1000)
	    	setTimeout(function() {
	    		$('.mouse_text').stop().animate({'opacity':1})
	    	}, 1000)
	    }).mouseleave(function(){
	    	console.log("aa")
	    	
	    	$('.mouse_text').stop().animate({'opacity':0})
	    	
	    	$(this).stop().animate({
	    		bottom:'10%'
	    	},1000)

	    	
	    })

	    $('.content3 .main_left_go').mouseenter(function(){
	    	if(!$(this).is('.on')){
	    		$(this).append('<div class="blind"></div>')
	    		$(this).append('<div class="view_info"></div>')
	    		$('.view_info').append('<div class="view_btn">자세히 보기</div>')
	    	}
	    }).mouseleave(function() {
	    	$(this).find('.blind').remove();
	    	$(this).find('.view_info').remove();
	    });

	    $('.content3 .main_right_go').mouseenter(function(){
	    	if(!$(this).is('.on')){
				$(this).append('<div class="blind"></div>')
		    	$(this).append('<div class="view_info"></div>')
		    	$('.view_info').append('<div class="view_btn">자세히 보기</div>')
	    	}
	    	

	    }).mouseleave(function() {
	    	$(this).find('.blind').remove();
	    	$(this).find('.view_info').remove();
	    });

	    $('.content3 .main_left_go').on('click','.view_info',function(){

	    	$('.content3 .main_left_go').addClass('on');
	    	$('.main_left_go').find('.view_info').remove();
	    	$('.main_left_go').find('.blind').remove();
	    	console.log("aa")
	    	$('.main_left_go').css({
	    		position:'fixed',
	    		top:0,
	    		bottom:0,
	    		left:0,
	    		Transform:'translate(0,0)',
	    		margin:0,
	    		width:'100%',
	    		height:'100%',
	    		'z-index':'300',
	    		cursor:'default'
	    	})

	    	$('.main_right_go').css('z-index',0);

	    		$('.main_left_go .imgbox img').css('width','600px');

	    		$('.bbs1').animate({
	    		top:'6%'
		    	},500)

				$('.bbs2').animate({
	    		left:'16%',
	    		top:'35%'
		    	},500)

		    	$('.bbs3').animate({
		    		top:'64%'
		    	},500)


		    if($('.content3 .main_left_go').css('position')=='fixed' && $('.content3').is('.on')){
		    	$('.content3 .main_left_go').on("mousewheel", function() {
				    return false;
				});
		    }else if($('.content3 .main_left_go').css('position')=='absolute'){
		    	$('.content3 .main_left_go').on("mousewheel", function() {
				    return true;
				});
		    }


			setTimeout(function(){

				$('.main_left_go .explain').css('display','inline-block');
				$('.main_left_go .close').css('display','inline-block');

			},1000)

	    })
	    
	    
	    
	    $('.content3 .main_left_go .close').click(function(){
	    	console.log("클로즈")
	    	$(this).hide();
	    	$(this).prev().hide();
	    	$(this).parent('.main_left_go').css({
	    		position:'absolute',
	    		left:'50%',
	    		top:'50%',
	    		transform:'translate(6%,6%)',
	    		width:'500px',
	    		height:'560px',
	    		'margin-top':'-280px',
	    		cursor:'pointer'
	    	})

	    	$('.content3 .main_left_go').removeClass('on');
	    	$('.main_left_go .imgbox img').animate({'width':'400px'});
	    	setTimeout(function() {
	    		$('.main_left_go').css('z-index',0)
	    	}, 1000)
	    })

	    $('.content3 .main_right_go').on('click','.view_info',function(){
	    	$('.main_right_go').addClass('on');
	    	$('.main_right_go').find('.view_info').remove();
	    	$('.main_right_go').find('.blind').remove();
	    	console.log("aa")
	    	$('.main_right_go').css({
	    		position:'fixed',
	    		top:0,
	    		bottom:0,
	    		right:0,
	    		Transform:'translate(0,0)',
	    		margin:0,
	    		width:'100%',
	    		height:'100%',
	    		'z-index':'300',
	    		cursor:'default'
	    	})
	    	$('.main_left_go').css('z-index',0)
			$('.main_right_go .imgbox img').css('width','600px');

			$('.cafe1').animate({
				top:'6%'
	    	},500)

			$('.cafe2').animate({
				left:'16%',
				top:'35%'
	    	},500)

	    	$('.cafe3').animate({
	    		top:'64%'
	    	},500)

	    	if($('.content3 .main_right_go').css('position')=='fixed'&& $('.content3').is('.on')){
		    	$('.content3 .main_right_go').on("mousewheel", function() {
				    return false;
				});
		    }else if($('.content3 .main_right_go').css('position')=='absolute'){
		    	$('.content3 .main_right_go').on("mousewheel", function() {
				    return true;
				});
		    }

			setTimeout(function(){

				$('.main_right_go .explain').css('display','inline-block');
				$('.main_right_go .close').css('display','inline-block');

			},1000)

	    })

	    $('.content3 .main_right_go .close').click(function(){
	    	console.log("클로즈")
	    	$(this).hide();
	    	$(this).prev().hide();
	    	$(this).parent('.main_right_go').css({
	    		position:'absolute',
	    		right:'50%',
	    		top:'50%',
	    		transform:'translate(-6%,6%)',
	    		width:'500px',
	    		height:'560px',
	    		'margin-top':'-280px',
	    		cursor:'pointer'
	    	})
	    	$('.main_right_go').removeClass('on');
	    	$('.main_right_go .imgbox img').animate({'width':'400px'});
	    	setTimeout(function() {
	    		$('.main_right_go').css('z-index',0)
	    	}, 1000)
	    })
	})
	
	
})