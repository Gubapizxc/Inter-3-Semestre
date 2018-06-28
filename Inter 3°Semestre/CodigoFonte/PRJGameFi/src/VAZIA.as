public function colisaoJogadorPlataformaY():void {
			for (var i:int = 0; i < plataformaArray.length; i++) {
				if (jogador.forma == "humano" || jogador.forma == "transformando1" || jogador.forma == "transformando2") {
					if (jogador.areaHitBoxHumano().intersects(plataformaArray[i].getBounds(stage))) {
						var area1:Rectangle = jogador.areaHitBoxHumano().intersection(plataformaArray[i].getBounds(stage));
						if (jogador.velocidadeY > 0 && jogador.areaHitBoxHumano().y < plataformaArray[i].areaHitBox().y - 10) {
							jogador.y -= area1.height;
							jogador.velocidadeY = 0;
							if (jogador.estado == "ar") {
								jogador.estado = "chao";
							}
						}
					}
				} else if (jogador.forma == "gato" || jogador.forma == "transformando1" || jogador.forma == "transformando2") {
					if (jogador.areaHitBoxGato().intersects(plataformaArray[i].getBounds(stage))) {
						var area2:Rectangle = jogador.areaHitBoxGato().intersection(plataformaArray[i].getBounds(stage));
						if (jogador.velocidadeY > 0 && jogador.areaHitBoxGato().y < plataformaArray[i].areaHitBox().y - 10) {
							jogador.y -= area2.height;
							jogador.velocidadeY = 0;
							if (jogador.estado == "ar") {
								jogador.estado = "chao";
							}
						}
					}
				}
			}
		}

		
		
		
		
		
	//000000000000000000000000000000000000000000000000000000000000000000000000000000000000000		
		
		
		
public function colisaoJogadorPlataformaX():void {
			for (var i:int = 0; i < barreiraArray.length; i++) {
				if (jogador.forma == "humano" || jogador.forma == "transformando1" || jogador.forma == "transformando2") {
					if (jogador.areaHitBoxHumano().intersects(barreiraArray[i].areaHitBox())) {
						var area1:Rectangle = jogador.areaHitBoxHumano().intersection(barreiraArray[i].areaHitBox());
						if (jogador.velocidadeX > 0 ) {
							
							jogador.x -= area1.width;
						} else if (jogador.velocidadeX < 0) {
							jogador.x += area1.width;
						}
					}
				} else if (jogador.forma == "gato" || jogador.forma == "transformando1" || jogador.forma == "transformando2") {
					if (jogador.areaHitBoxGato().intersects(barreiraArray[i].areaHitBox())) {
						var area2:Rectangle = jogador.areaHitBoxGato().intersection(barreiraArray[i].areaHitBox());
						if (jogador.velocidadeX > 0) {
							jogador.x -= area2.width;
						} else if (jogador.velocidadeX < 0) {
							jogador.x += area2.width;
						}
					}
				}
			}
		}



		
		
	//000000000000000000000000000000000000000000000000000000000000000000000000000000000000000	
		
		
		

public function atualizaJogador():void {
			jogador.velocidadeX = 0;
			jogador.velocidadeY += 2;
			
			if(jogador.forma == "humano"){	
				if (jogador.x <= 12) {
					if ( jogador.estado == "chao") {
						if (esquerda) {
							jogador.flagLado = "esq";
							esquerda = false;
						}
					}
				}
				if (jogador.x >= 790) {
					if ( jogador.estado == "chao") {
						if (direita) {
							jogador.flagLado = "dir";
							direita = false;
						}
					}
				}
			}
			if(jogador.forma == "gato"){	
				if (jogador.x <= 25) {
					if ( jogador.estado == "chao") {
						if (esquerda) {
							jogador.flagLado = "esq";
							esquerda = false;
						}
					}
				}
				if (jogador.x >= 777) {
					
					if ( jogador.estado == "chao") {
						if (direita) {
							jogador.flagLado = "dir";
							direita = false;
						}
					}
				}
			}
			if (jogador.forma == "gato") {
				if (botaoX) {
					if (jogador.transformacaoCooldown == 0) {
						jogador.forma = "transformando2";
						jogador.anim.mostrar("transformando", false);
						jogador.transformacaoCooldown = 150;
						mudaHUD(2);
					}
				}
			}
			if (jogador.forma == "humano") {
				if (botaoX) {
					if (jogador.transformacaoCooldown == 0) {
						jogador.forma = "transformando1";
						jogador.anim.mostrar("transformando", false);
						jogador.transformacaoCooldown = 150;
						mudaHUD(1);
					}
				}
			}
			
			if (jogador.forma == "transformando1") {
				if (jogador.anim.movieclip().isComplete) {
					jogador.forma = "gato";
				}
			} else if (jogador.forma == "transformando2") {
				if (jogador.anim.movieclip().isComplete) {
					jogador.forma = "humano";
					jogador.flagLado = "dir";
					jogador.scaleX = 1;
				}
			}
			
			if (jogador.forma == "humano") {
				if (jogador.estado == "chao") {
					if (cima) {
						jogador.velocidadeY -= 17;
					}
					if (direita) {
						jogador.flagLado = "dir";
						jogador.velocidadeX += 10;
					}
					if (esquerda) {
						jogador.flagLado = "esq";
						jogador.velocidadeX -= 10;
					}
				} else {
					if (jogador.estado == "ar") {
						if (direita) {
							jogador.flagLado = "dir";
							jogador.velocidadeX += 10;
						}
						if (esquerda) {
							jogador.flagLado = "esq";
							jogador.velocidadeX -= 10;
						}
					}
				}
			} else {
				if (jogador.forma == "gato") {
					if (jogador.estado == "chao") {
						if (cima) {
							jogador.velocidadeY -= 25;
						}
						if (direita) {
							jogador.flagLado = "dir";
							jogador.velocidadeX += 10;
						}
						if (esquerda) {
							jogador.flagLado = "esq";
							jogador.velocidadeX -= 10;
						}
						if (botaoZ) {
							colisaoJogadorEsconderijo();
						}
					} else if (jogador.estado == "ar") {
						if (direita) {
							jogador.flagLado = "dir";
							jogador.velocidadeX += 10;
						}
						if (esquerda) {
							jogador.flagLado = "esq";
							jogador.velocidadeX -= 10;
						}
					}
				}
			}
			
			if (jogador.forma == "humano") {
				if (jogador.velocidadeY != 0) {
					jogador.estado = "ar";
				}
			} else if (jogador.forma == "gato") {
				if (jogador.velocidadeY != 0) {
					jogador.estado = "ar";
				}
			}
			
			jogador.x += jogador.velocidadeX;
			colisaoJogadorPlataformaX();
			jogador.y += jogador.velocidadeY;
			colisaoJogadorPlataformaY();
			
			if (jogador.forma == "humano") {
				if (jogador.estado == "ar") {
					jogador.anim.mostrar("catmanPulando", false);
				} else {
					if (jogador.velocidadeX != 0) {
						jogador.anim.mostrar("catmanAndando", true);
					} else {
						jogador.anim.mostrar("catmanParado", true);
					}
				}
			} else if (jogador.forma == "gato") {
				if (jogador.estado != "chao" && jogador.estado != "escondido") {
					jogador.anim.mostrar("gatoPulando", false);
				} else if (botaoZ && colisaoJogadorEsconderijo()) {
					jogador.estado = "escondido";
					jogador.anim.mostrar("gatoOlho", true);
				} else if (jogador.velocidadeX != 0) {
					jogador.anim.mostrar("gatoAndando", true);
				} else {
					jogador.anim.mostrar("gatoParado", true);
				}
			}
			
			if (jogador.forma == "humano") {
				if (jogador.velocidadeX > 0) {
					jogador.scaleX = 1;
				} else if (jogador.velocidadeX < 0) {
					jogador.scaleX = -1;
				}
			} else if (jogador.forma == "gato") {
				if (jogador.velocidadeX > 0) {
					jogador.scaleX = -1;
				} else if (jogador.velocidadeX < 0) {
					jogador.scaleX = 1;
				}
			}
			
			if (jogador.imortal > 0) {
				jogador.imortal--;
				jogador.alpha = 0.5
			} else {
				jogador.alpha = 1;
			}
		}