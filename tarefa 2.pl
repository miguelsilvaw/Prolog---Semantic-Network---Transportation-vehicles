%sistema de interferencia
:- [redesem],
dynamic(lugares_disponiveis/1),dynamic(distancias_percorridas/1),dynamic(tipo/1), dynamic(tipo/1), dynamic(seguranca/1),dynamic(velocidade/1),dynamic(preco_utilizacao/1),dynamic(utilizacao/1).



%base de dados do problema



agente(publicos,['transportes publicos, utilizados prioritariamente para varios grupos de pessoas']).
agente(privados,['transportes privados, utilizados prioritariamente para grupos restritos de pessoas']).

agente(aereos,['transportes aereos, movem-se pelo ar normalmente utilizados na deslocacao entre paises']).
agente(terrestres,['transportes terrestres, movem-se pela terra utilizados mais frequentemente na deslocacao dentro dos paises']).
agente(maritimos,['transportes maritimos, movem-se atraves da agua, utilizados para atividades pesqueiras ou passeios']).

agente(motorizados,['transportes que incluem a utilizacao de um motor']).
agente(nao_motorizados,['transportes que nao necessitam de um motor para funcionar']).


agente(automovel_passageiros,[lugares_disponiveis(dois_a_cinco), distancias_percorridas(medias_distancias), tipo(familiar),seguranca(alta), velocidade(media),preco_utilizacao(barato),utilizacao(transportes_dia_a_dia_ou_viagens_entre_cidades)]).
agente(automovel_comercial,[lugares_disponiveis(dois), distancias_percorridas(medias_distancias), tipo(comercial),seguranca(alta), velocidade(media),preco_utilizacao(barato),utilizacao(transportar_mercadorias)]).
agente(autocarro,[lugares_disponiveis(dez_a_cem), distancias_percorridas(curtas_distancias), tipo(publico),seguranca(muitoalta),velocidade(media),preco_utilizacao(barato),utilizacao(transportes_urbanos_ou_entre_cidades)]).
agente(taxi,[lugares_disponiveis(um_a_sete), distancias_percorridas(curtas_distancias), tipo(publico),seguranca(alta),velocidade(media),preco_utilizacao(medio),utilizacao(transportes_urbanos)]).
agente(camiao_mercadorias,[lugares_disponiveis(tres), distancias_percorridas(longas_distancias), tipo(comercial),seguranca(muitoalta),velocidade(media),preco_utilizacao(medio),utilizacao(transportes_para_entregar_mercadorias_de_pequeno_ou_grande_porte)]).
agente(tratores_agricolas,[lugares_disponiveis(um), distancias_percorridas(curtas_distancias), tipo(agricola),seguranca(muitoalta), velocidade(lento),preco_utilizacao(barato),utilizacao(transportes_para_cultivar)]).
agente(tratores_florestais,[lugares_disponiveis(um), distancias_percorridas(curtas_distancias), tipo(agricola),seguranca(muitoalta), velocidade(lento),preco_utilizacao(barato),utilizacao(transportes_para_desvastar_terrenos_agriculas)]).
agente(maquinas_escavadoras,[lugares_disponiveis(um), distancias_percorridas(curtas_distancias), tipo(industrial),seguranca(muitoalta), velocidade(lento),preco_utilizacao(barato),utilizacao(transportes_materiais_ou_escavacoes)]).
agente(tanque_militar,[lugares_disponiveis(tres_a_quatro), distancias_percorridas(medias_distancias), tipo(guerra),seguranca(muitoalta), velocidade(lento),preco_utilizacao(caro),utilizacao(transportes_para_atacar_determinado_alvo)]).
agente(mota,[lugares_disponiveis(um), distancias_percorridas(curtas_distancias), tipo(transportador),seguranca(media), velocidade(media),preco_utilizacao(barato),utilizacao(transportes_simples_ou_entre_cidades)]).
agente(moto_quatro,[lugares_disponiveis(um), distancias_percorridas(curtas_distancias), tipo(transportador),seguranca(media), velocidade(media),preco_utilizacao(barato),utilizacao(transportes_montanhosos_ou_areais)]).
agente(bicicleta,[lugares_disponiveis(um), distancias_percorridas(curtas_distancias), tipo(lazer),seguranca(media), velocidade(lento),preco_utilizacao(inexistente),utilizacao(transportes_urbanos_ou_lazer)]).
agente(skate,[lugares_disponiveis(um), distancias_percorridas(curtas_distancias), tipo(lazer),seguranca(baixa), velocidade(lento),preco_utilizacao(inexistente),utilizacao(atividades_de_lazer)]).
agente(patins,[lugares_disponiveis(um), distancias_percorridas(curtas_distancias), tipo(lazer),seguranca(baixa), velocidade(lento),preco_utilizacao(inexistente),utilizacao(atividades_de_lazer)]).
agente(veiculos_tracao_animal,[lugares_disponiveis(dois_a_seis), distancias_percorridas(curtas_distancias), tipo(lazer),seguranca(media), velocidade(lento),preco_utilizacao(inexistente),utilizacao(transportes_rurais_ou_passeios)]).
agente(carrinha,[lugares_disponiveis(dois_a_nove), distancias_percorridas(medias_distancias), tipo(comercial),seguranca(alta), velocidade(media),preco_utilizacao(baixo),utilizacao(transportes_produtos_acabados)]).
agente(caravana,[lugares_disponiveis(dois_a_cinco), distancias_percorridas(medias_distancias), tipo(familiar),seguranca(alta), velocidade(media),preco_utilizacao(baixo),utilizacao(transportes_longa_duracao)]).
agente(aviao_passageiros,[lugares_disponiveis(vinte_a_trezentos), distancias_percorridas(longas_distancias), tipo(comercial),seguranca(alta), velocidade(rapido),preco_utilizacao(medio),utilizacao(transportes_longa_duracao)]).
agente(aviao_militar_jato,[lugares_disponiveis(dois_a_seis), distancias_percorridas(longas_distancias), tipo(guerra),seguranca(muitoalta), velocidade(rapido),preco_utilizacao(caro),utilizacao(transportes_curta_duracao)]).
agente(aviao_militar,[lugares_disponiveis(dois_a_seis), distancias_percorridas(longas_distancias), tipo(guerra),seguranca(muitoalta), velocidade(rapido),preco_utilizacao(caro),utilizacao(transportes_curta_duracao)]).
agente(aviao_militar_bombardeio,[lugares_disponiveis(dois_a_seis), distancias_percorridas(longas_distancias), tipo(guerra),seguranca(muitoalta), velocidade(media),preco_utilizacao(caro),utilizacao(transportes_curta_duracao)]).
agente(balao,[lugares_disponiveis(dois_a_seis), distancias_percorridas(curtas_distancias), tipo(lazer),seguranca(media), velocidade(lento),preco_utilizacao(caro),utilizacao(transportes_curta_duracao)]).
agente(helicoptero,[lugares_disponiveis(dois_a_seis), distancias_percorridas(medias_distancias), tipo(privado),seguranca(alta), velocidade(media),preco_utilizacao(caro),utilizacao(transportes_de_media_duração)]).
agente(barco,[lugares_disponiveis(um_a_centoecinquenta), distancias_percorridas(medias_distancias), tipo(lazer),seguranca(alta), velocidade(lento),preco_utilizacao(medio),utilizacao(transportes_longa_duracao)]).
agente(ferry,[lugares_disponiveis(um_a_centoecinquenta), distancias_percorridas(curtas_distancias), tipo(publico),seguranca(alta), velocidade(lento),preco_utilizacao(baixo),utilizacao(transportes_curta_duracao)]).
agente(iate,[lugares_disponiveis(um_a_quinze), distancias_percorridas(medias_distancias), tipo(lazer),seguranca(alta), velocidade(lento),preco_utilizacao(caro),utilizacao(transportes_de_curta_duração)]).
agente(mota_de_agua,[lugares_disponiveis(um_a_dois), distancias_percorridas(curtas_distancias), tipo(lazer),seguranca(media), velocidade(rapido),preco_utilizacao(baixo),utilizacao(transportes_de_curta_duração)]).
agente(veleiro,[lugares_disponiveis(dois_a_quatro), distancias_percorridas(medias_distancias), tipo(lazer),seguranca(media), velocidade(lento),preco_utilizacao(medio),utilizacao(transportes_de_media_duração)]).
agente(canoa,[lugares_disponiveis(um_a_quatro), distancias_percorridas(curtas_distancias), tipo(lazer),seguranca(media), velocidade(lento),preco_utilizacao(baixo),utilizacao(transportes_de_curta_duração)]).
agente(submarino,[lugares_disponiveis(dois_a_dez), distancias_percorridas(longas_distancias), tipo(privado),seguranca(alta), velocidade(lento),preco_utilizacao(caro),utilizacao(transportes_de_longa_duração)]).
agente(comboio,[lugares_disponiveis(cinquenta_a_cem), distancias_percorridas(medias_distancias), tipo(publico),seguranca(alta), velocidade(media),preco_utilizacao(baixo),utilizacao(transportes_de_curta_duração)]).
agente(metro,[lugares_disponiveis(vinte_a_oitenta), distancias_percorridas(curtas_distancias), tipo(publico),seguranca(alta), velocidade(media),preco_utilizacao(baixo),utilizacao(transportes_de_curta_duração)]).
agente(eletrico,[lugares_disponiveis(dez_a_quarenta), distancias_percorridas(curtas_distancias), tipo(publico),seguranca(alta), velocidade(lento),preco_utilizacao(baixo),utilizacao(transportes_de_curta_duração)]).
agente(parapente,[lugares_disponiveis(um), distancias_percorridas(curtas_distancias), tipo(privado),seguranca(media), velocidade(media),preco_utilizacao(baixo),utilizacao(atividades_de_lazer)]).
agente(para_quedas,[lugares_disponiveis(um_ou_dois), distancias_percorridas(curtas_distancias), tipo(privado),seguranca(media), velocidade(lento),preco_utilizacao(baixo),utilizacao(atividades_de_lazer)]).
agente(asa_delta,[lugares_disponiveis(um), distancias_percorridas(curtas_distancias), tipo(privado),seguranca(baixa), velocidade(lento),preco_utilizacao(baixo),utilizacao(transportes_de_curta_duração)]).
agente(alfa_pendular,[lugares_disponiveis(vinte_a_cento_cinquenta), distancias_percorridas(medias_distancias), tipo(publico),seguranca(alta), velocidade(media),preco_utilizacao(baixo),utilizacao(transportes_de_curta_duração)]).
agente(jato,[lugares_disponiveis(tres_a_quinze), distancias_percorridas(medias_distancias), tipo(privado),seguranca(alta), velocidade(rapido),preco_utilizacao(caro),utilizacao(transportes_de_curta_duração)]).



%base de conhecimento


	isa(barco,maritimos).
	isa(ferry,maritimos).
	isa(mota_de_agua,maritimos).
	isa(iate,maritimos).
	isa(submarino,maritimos).
	isa(canoa,maritimos).
	isa(veleiro,maritimos).


	isa(autocarro,terrestres).
	isa(taxi,terrestres).
	isa(comboio,terrestres).
	isa(metro,terrestres).
	isa(eletrico,terrestres).
	isa(alfa_pendular,terrestres).
	isa(automovel_passageiro,terrestres).
	isa(automovel_comercial,terrestres).
	isa(camiao_mercadorias,terrestres).
	isa(tratores_agricolas,terrestres).
	isa(tratores_florestais,terrestres).
	isa(maquinas_escavadoras,terrestres).
	isa(tanque_militar,terrestres).
	isa(mota,terrestres).
	isa(moto_quatro,terrestres).
	isa(carrinha,terrestres).
	isa(caravana,terrestres).
	isa(veiculos_tracao_animal,terrestres).
	isa(bicicleta,terrestres).
	isa(skate,terrestres).
	isa(patins,terrestres).


	isa(aviao_passageiros,aereos).
	isa(aviao_militar_jato,aereos).
	isa(aviao_miliar,aereos).
	isa(aviao_militar_bombardeiro,aereos).
	isa(helicopetro,aereos).
	isa(jato,aereos).
	isa(balao,aereos).
	isa(parapente,aereos).
	isa(para_quedas,aereos).
	isa(asa_delta,aereos).


	isa(barco,motorizados).
	isa(ferry,motorizados).
	isa(mota_de_agua,motorizados).
	isa(iate,motorizados).
	isa(submarino,motorizados).
	isa(autocarro,motorizados).
	isa(taxi,motorizados).
	isa(comboio,motorizados).
	isa(metro,motorizados).
	isa(eletrico,motorizados).
	isa(alfa_pendular,motorizados).
	isa(automovel_passageiro,motorizados).
	isa(automovel_comercial,motorizados).
	isa(camiao_mercadorias,motorizados).
	isa(tratores_agricolas,motorizados).
	isa(tratores_florestais,motorizados).
	isa(maquinas_escavadoras,motorizados).
	isa(tanque_militar,motorizados).
	isa(mota,motorizados).
	isa(moto_quatro,motorizados).
	isa(carrinha,motorizados).
	isa(caravana,motorizados).
	isa(aviao_passageiros,motorizados).
	isa(aviao_militar_jato,motorizados).
	isa(aviao_miliar,motorizados).
	isa(aviao_militar_bombardeiro,motorizados).
	isa(helicopetro,motorizados).
	isa(jato,motorizados).

	isa(canoa,nao_motorizados).
	isa(veleiro,nao_motorizados).
	isa(veiculos_tracao_animal,nao_motorizados).
	isa(bicicleta,nao_motorizados).
	isa(skate,nao_motorizados).
	isa(patins,nao_motorizados).
	isa(balao,nao_motorizados).
	isa(parapente,nao_motorizados).
	isa(para_quedas,nao_motorizados).
	isa(asa_delta,nao_motorizados).

	isa(barco,publicos).
	isa(ferry,publicos).
	isa(mota_de_agua,publicos).
	isa(canoa,publicos).
	isa(autocarro,publicos).
	isa(taxi,publicos).
	isa(comboio,publicos).
	isa(metro,publicos).
	isa(eletrico,publicos).
	isa(alfa_pendular,publicos).
	isa(veiculos_tracao_animal,publicos).
	isa(balao,publicos).
	isa(aviao_passageiros,publicos).


	isa(veleiro,privados).
	isa(iate,privados).
	isa(submarino,privados).
	isa(automovel_passageiro,privados).
	isa(automovel_comercial,privados).
	isa(camiao_mercadorias,privados).
	isa(tratores_agricolas,privados).
	isa(tratores_florestais,privados).
	isa(maquinas_escavadoras,privados).
	isa(tanque_militar,privados).
	isa(mota,privados).
	isa(moto_quatro,privados).
	isa(carrinha,privados).
	isa(caravana,privados).
	isa(bicicleta,privados).
	isa(skate,privados).
	isa(patins,privados).
	isa(parapente,privados).
	isa(para_quedas,privados).
	isa(asa_delta,privados).
	isa(aviao_militar_jato,privados).
	isa(aviao_miliar,privados).
	isa(aviao_militar_bombardeiro,privados).
	isa(helicopetro,privados).
	isa(jato,privados).


			

%interface



iniciar:- nl,nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                                SBC-Transportes                                |'),nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                                 Bem Vindo                                     |'),nl,
			write('|     Escolha o que pretende fazer                                              |'),nl,
	                write('|-------------------------------------------------------------------------------|'),nl,
			write('|1.Conhecer os transportes existentes                                           |'),nl,
			write('|2.Descrição de cada modo de transporte                                         |'),nl,
			write('|3.Descrição de cada transporte                                                 |'),nl,
			write('|4.Qual o transporte ideal para si?                                             |'),nl,
			write('|0.Sair                                                                         |'),nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			read(Z),
			((Z == 0), voltar;
			 (Z == 1), transportes;
			 (Z == 2), modoTransporte;
			 (Z == 3), descricao;
			 (Z == 4),transporteideal).

%1
transportes:- nl,nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                         Tipo de transporte de cada Veiculo                    |'),nl,
	                write('|-------------------------------------------------------------------------------|'),nl,
			write('|1.Transportes Maritimos                                                        |'),nl,
			write('|2.Transportes Terrestres                                                       |'),nl,
			write('|3.Transportes Aereos                                                           |'),nl,
			write('|4.Transportes Publicos                                                         |'),nl,
			write('|5.Transportes Privados                                                         |'),nl,
			write('|6.Transportes Motorizados                                                      |'),nl,
			write('|7.Transportes Não Motorizados                                                  |'),nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			read(A1),
			((A1 == 1), transMaritimos;
			 (A1 == 2), transTerrestres;
			 (A1 == 3), transAereos;
			 (A1 == 4), transPublicos;
			 (A1 == 5), transPrivados;
			 (A1 == 6), transMotorizados;
			 (A1 == 7), transNaoMotorizados). 


	transMaritimos:-  nl,nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                         Transportes Maritimos                                 |'),nl,
	                write('|-------------------------------------------------------------------------------|'),nl,
			findall(X,isa(X,maritimos),L),write(L),nl,voltar.





	transTerrestres:- nl,nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                         Transportes Terrestres                                |'),nl,
	                write('|-------------------------------------------------------------------------------|'),nl,
			findall(X,isa(X,terrestres),L),write(L),nl,nl,voltar.






	transAereos:- nl,nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                         Transportes Aereos                                    |'),nl,
	                write('|-------------------------------------------------------------------------------|'),nl,
			findall(X,isa(X,aereos),L),write(L),nl,nl,voltar.





	transPublicos:- nl,nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                         Transportes Publicos                                  |'),nl,
	                write('|-------------------------------------------------------------------------------|'),nl,
			findall(X,isa(X,publicos),L),write(L),nl,nl,voltar.



	transPrivados:- nl,nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                         Transportes Privados                                  |'),nl,
	                write('|-------------------------------------------------------------------------------|'),nl,
			findall(X,isa(X,privados),L),write(L),nl,nl,voltar.


	transMotorizados:- nl,nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                         Transportes Motorizados                               |'),nl,
	                write('|-------------------------------------------------------------------------------|'),nl,
			findall(X,isa(X,motorizados),L),write(L),nl,nl,voltar.




	transNaoMotorizados:- nl,nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                         Transportes Não Motorizados                           |'),nl,
	                write('|-------------------------------------------------------------------------------|'),nl,
			findall(X,isa(X,nao_motorizados),L),write(L),nl,nl,voltar.




%2

modoTransporte:- nl,nl,	
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                         Escolha o tipo de transporte                          |'),nl,
	                write('|-------------------------------------------------------------------------------|'),nl,
			write('|1.Marítimo                                                                     |'),nl,
			write('|2.Terrestre                                                                    |'),nl,
			write('|3.Aereo                                                                        |'),nl,
			write('|4.Publico                                                                      |'),nl,
			write('|5.Privado                                                                      |'),nl,
			write('|6.Motorizado                                                                   |'),nl,
			write('|7.Não Motorizado                                                               |'),nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			read(B1),
			((B1 == 1), caracMaritimo;
			 (B1 == 2), caracTerrestre;
			 (B1 == 3), caracAereo;
			 (B1 == 4), caracPublico;
			 (B1 == 5), caracPrivado;
			 (B1 == 6), caracMotorizado;
			 (B1 == 7), caracNaoMotorizado).


	caracMaritimo:-	nl,nl,	
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                         Sobre o Meio de Transporte                            |'),nl,
	                write('|-------------------------------------------------------------------------------|'),nl,
			demo(maritimos,X11),write(X11),voltar.

			
	caracTerrestre:- nl,nl,	
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                         Sobre o Meio de Transporte                            |'),nl,
	                write('|-------------------------------------------------------------------------------|'),nl,
			demo(terrestres,X12),write(X12),voltar.
			

	caracAereo:- nl,nl,		
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                         Sobre o Meio de Transporte                            |'),nl,
	                write('|-------------------------------------------------------------------------------|'),nl,
			demo(aereos,X13),write(X13),voltar.	
	caracPublico:- nl,nl,		
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                         Sobre o Meio de Transporte                            |'),nl,
	                write('|-------------------------------------------------------------------------------|'),nl,
			demo(publicos,X14),write(X14),voltar.
	caracPrivado:- nl,nl,		
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                         Sobre o Meio de Transporte                            |'),nl,
	                write('|-------------------------------------------------------------------------------|'),nl,
			demo(privados,X15),write(X15),voltar.
	caracMotorizado:- nl,nl,		
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                         Sobre o Meio de Transporte                            |'),nl,
	                write('|-------------------------------------------------------------------------------|'),nl,
			demo(motorizados,X16),write(X16),voltar.
	caracNaoMotorizado:- nl,nl,		
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                         Sobre o Meio de Transporte                            |'),nl,
	                write('|-------------------------------------------------------------------------------|'),nl,
			demo(nao_motorizados,X17),write(X17),voltar.		

%3

descricao:- nl,nl,	
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                         Escolha o tipo de transporte                          |'),nl,
	                write('|-------------------------------------------------------------------------------|'),nl,
			write('|1.Marítimo                                                                     |'),nl,
			write('|2.Terrestre                                                                    |'),nl,
			write('|3.Aereo                                                                        |'),nl,
			write('|4.Publico                                                                      |'),nl,
			write('|5.Privado                                                                      |'),nl,
			write('|6.Motorizado                                                                   |'),nl,
			write('|7.Não Motorizado                                                               |'),nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			read(C),
			((C == 1), maritimo;
			 (C == 2), terrestre;
			 (C == 3), aereo;
			 (C == 4), publico;
			 (C == 5), privado;
			 (C == 6), motorizado;
			 (C == 7), nao_motorizado). 

	maritimo:- nl,nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                  Escolha o transporte que deseja visualizar                   |'),nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|1.Barco                                                                        |'),nl,
			write('|2.Ferry                                                                        |'),nl,
			write('|3.Mota de Agua                                                                 |'),nl,
			write('|4.Iate                                                                         |'),nl,
			write('|5.Submarino                                                                    |'),nl,
			write('|6.Canoa                                                                        |'),nl,
			write('|7.Veleiro                                                                      |'),nl,
			read(C1),
			((C1==1),write('Barco: '), nl, findall(Y,demo(barco,Y),L), write(L), nl,voltar;
			 (C1==2),write('Ferry: '), nl, findall(Y,demo(ferry,Y),L), write(L), nl,voltar;
			 (C1==3),write('Mota de Água: '), nl, findall(Y,demo(mota_de_agua,Y),L), write(L), nl,voltar;
			 (C1==4),write('Iate: '), nl, findall(Y,demo(iate,Y),L), write(L), nl,voltar;
			 (C1==5),write('Submarino: '), nl, findall(Y,demo(submarino,Y),L), write(L), nl,voltar;
			 (C1==6),write('Canoa: '), nl, findall(Y,demo(canoa,Y),L), write(L), nl,voltar;
			 (C1==7),write('Veleiro: '), nl, findall(Y,demo(veleiro,Y),L), write(L), nl,voltar).



	terrestre:- nl,nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                  Escolha o transporte que deseja visualizar                   |'),nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|1.Autocarro                                                                    |'),nl,
			write('|2.Taxi                                                                         |'),nl,
			write('|3.Comboio                                                                      |'),nl,
			write('|4.Metro                                                                        |'),nl,
			write('|5.Eletrico                                                                     |'),nl,
			write('|6.Alfa Pendular                                                                |'),nl,
			write('|7.Automovel Passageiros                                                        |'),nl,
			write('|8.Automovel Comercial                                                          |'),nl,
			write('|9.Camião de Mercadorias                                                        |'),nl,
			write('|10.Trator Agricola                                                             |'),nl,
			write('|11.Trator Florestal                                                            |'),nl,
			write('|12.Maquina Escavadora                                                          |'),nl,
			write('|13.Tanque Militar                                                              |'),nl,
			write('|14.Mota                                                                        |'),nl,
			write('|15.Moto Quatro                                                                 |'),nl,
			write('|16.Carrinha                                                                    |'),nl,
			write('|17.Caravana                                                                    |'),nl,
			write('|18.Veiculo de tração animal                                                    |'),nl,
			write('|19.Bicicleta                                                                   |'),nl,
			write('|20.Skate                                                                       |'),nl,
			write('|21.Patins                                                                      |'),nl,
			read(C2),
			((C2==1),write('Autocarro: '), nl, findall(Y,demo(autocarro,Y),L), write(L), nl,voltar;
			 (C2==2),write('Taxi: '), nl, findall(Y,demo(taxi,Y),L), write(L), nl,voltar;
			 (C2==3),write('Comboio: '), nl, findall(Y,demo(comboio,Y),L), write(L), nl,voltar;
			 (C2==4),write('Metro: '), nl, findall(Y,demo(metro,Y),L), write(L), nl,voltar;
			 (C2==5),write('Eletrico: '), nl, findall(Y,demo(eletrico,Y),L), write(L), nl,voltar;
			 (C2==6),write('Alfa Pendular: '), nl, findall(Y,demo(alfa_pendular,Y),L), write(L), nl,voltar;
			 (C2==7),write('Automovel Passageiros: '), nl, findall(Y,demo(automovel_passageiros,Y),L), write(L), nl,voltar;
			 (C2==8),write('Automovel Comercial: '), nl, findall(Y,demo(automovel_comercial,Y),L), write(L), nl,voltar;
			 (C2==9),write('Camião de Mercadorias: '), nl, findall(Y,demo(camiao_mercadorias,Y),L), write(L), nl,voltar;
			 (C2==10),write('Trator Agricola: '), nl, findall(Y,demo(tratores_agriculas,Y),L), write(L), nl,voltar;
			 (C2==11),write('Trator Florestal: '), nl, findall(Y,demo(tratores_florestais,Y),L), write(L), nl,voltar;
			 (C2==12),write('Maquina Escavadora: '), nl, findall(Y,demo(maquinas_escavadoras,Y),L), write(L), nl,voltar;
			 (C2==13),write('Tanque Militar: '), nl, findall(Y,demo(tanque_militar,Y),L), write(L), nl,voltar;
			 (C2==14),write('Mota: '), nl, findall(Y,demo(mota,Y),L), write(L), nl,voltar;
			 (C2==15),write('Moto Quatro: '), nl, findall(Y,demo(moto_quatro,Y),L), write(L), nl,voltar;
			 (C2==16),write('Carrinha: '), nl, findall(Y,demo(carrinha,Y),L), write(L), nl,voltar;
			 (C2==17),write('Caravana: '), nl, findall(Y,demo(caravana,Y),L), write(L), nl,voltar;
			 (C2==18),write('Veiculo de tração animal: '), nl, findall(Y,demo(veiculo_tracao_animal,Y),L), write(L), nl,voltar;
			 (C2==19),write('Bicicleta: '), nl, findall(Y,demo(bicicleta,Y),L), write(L), nl,voltar;
			 (C2==20),write('Skate : '), nl, findall(Y,demo(skate,Y),L), write(L), nl,voltar;
			 (C2==21),write('Patins: '), nl, findall(Y,demo(patins,Y),L), write(L), nl,voltar).


	aereo:- nl,nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                  Escolha o transporte que deseja visualizar                   |'),nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|1.Avião de Passageiros                                                         |'),nl,
			write('|2.Avião Militar Jato                                                           |'),nl,
			write('|3.Avião Militar Caça                                                           |'),nl,
			write('|4.Avião Militar de Bombardeamento                                              |'),nl,
			write('|5.Helicopetro                                                                  |'),nl,
			write('|6.Jato                                                                         |'),nl,
			write('|7.Balão                                                                        |'),nl,
			write('|8.Parapente                                                                    |'),nl,
			write('|9.Para-Quedas                                                                  |'),nl,
			write('|10.Asa-Delta                                                                    |'),nl,
			read(C3),
			((C3==1),write('Avião de Passageiros: '), nl, findall(Y,demo(aviao_passageiros,Y),L), write(L), nl,voltar;
			 (C3==2),write('Avião Militar Jato: '), nl, findall(Y,demo(aviao_militar_jato,Y),L), write(L), nl,voltar;
			 (C3==3),write('Avião Militar Caça: '), nl, findall(Y,demo(aviao_militar,Y),L), write(L), nl,voltar;
			 (C3==4),write('Avião Militar Bombardeiro: '), nl, findall(Y,demo(aviao_militar_bombardeamento,Y),L), write(L), nl,voltar;
			 (C3==5),write('Helecópetro : '), nl, findall(Y,demo(helecopetro,Y),L), write(L), nl,voltar;
			 (C3==6),write('Jato : '), nl, findall(Y,demo(jato,Y),L), write(L), nl,voltar;
			 (C3==7),write('Balão : '), nl, findall(Y,demo(balao,Y),L), write(L), nl,voltar;
			 (C3==8),write('Parapente : '), nl, findall(Y,demo(parapente,Y),L), write(L), nl,voltar;
			 (C3==9),write('Para-quedas : '), nl, findall(Y,demo(para_quedas,Y),L), write(L), nl,voltar;
			 (C3==10),write('Asa Delta : '), nl, findall(Y,demo(asa_delta,Y),L), write(L), nl,voltar).

	motorizado:- nl,nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                  Escolha o transporte que deseja visualizar                   |'),nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|1.Autocarro                                                                    |'),nl,
			write('|2.Taxi                                                                         |'),nl,
			write('|3.Comboio                                                                      |'),nl,
			write('|4.Metro                                                                        |'),nl,
			write('|5.Eletrico                                                                     |'),nl,
			write('|6.Alfa Pendular                                                                |'),nl,
			write('|7.Automovel Passageiros                                                        |'),nl,
			write('|8.Automovel Comercial                                                          |'),nl,
			write('|9.Camião de Mercadorias                                                        |'),nl,
			write('|10.Trator Agricola                                                             |'),nl,
			write('|11.Trator Florestal                                                            |'),nl,
			write('|12.Maquina Escavadora                                                          |'),nl,
			write('|13.Tanque Militar                                                              |'),nl,
			write('|14.Mota                                                                        |'),nl,
			write('|15.Moto Quatro                                                                 |'),nl,
			write('|16.Carrinha                                                                    |'),nl,
			write('|17.Caravana                                                                    |'),nl,
			write('|18.Barco                                                                       |'),nl,
			write('|19.Ferry                                                                       |'),nl,
			write('|20.Mota de Agua                                                                |'),nl,
			write('|21.Iate                                                                        |'),nl,
			write('|22.Submarino                                                                   |'),nl,
			write('|23.Aviao Passageiros                                                           |'),nl,
			write('|24.Aviao Militar Jato                                                          |'),nl,
			write('|25.Aviao Militar Caça                                                          |'),nl,
			write('|26.Aviao Militar Bombardeamento                                                |'),nl,
			write('|27.Helecopetro                                                                 |'),nl,
			write('|28.Jato                                                                        |'),nl,
			read(C4),
			((C4==1),write('Autocarro: '), nl, findall(Y,demo(autocarro,Y),L), write(L), nl,voltar;
			 (C4==2),write('Taxi: '), nl, findall(Y,demo(taxi,Y),L), write(L), nl,voltar;
			 (C4==3),write('Comboio: '), nl, findall(Y,demo(comboio,Y),L), write(L), nl,voltar;
			 (C4==4),write('Metro: '), nl, findall(Y,demo(metro,Y),L), write(L), nl,voltar;
			 (C4==5),write('Eletrico: '), nl, findall(Y,demo(eletrico,Y),L), write(L), nl,voltar;
			 (C4==6),write('Alfa Pendular: '), nl, findall(Y,demo(alfa_pendular,Y),L), write(L), nl,voltar;
			 (C4==7),write('Automovel Passageiros: '), nl, findall(Y,demo(automovel_passageiros,Y),L), write(L), nl,voltar;
			 (C4==8),write('Automovel Comercial: '), nl, findall(Y,demo(automovel_comercial,Y),L), write(L), nl,voltar;
			 (C4==9),write('Camião de Mercadorias: '), nl, findall(Y,demo(camiao_mercadorias,Y),L), write(L), nl,voltar;
			 (C4==10),write('Trator Agricola: '), nl, findall(Y,demo(tratores_agriculas,Y),L), write(L), nl,voltar;
			 (C4==11),write('Trator Florestal: '), nl, findall(Y,demo(tratores_florestais,Y),L), write(L), nl,voltar;
			 (C4==12),write('Maquina Escavadora: '), nl, findall(Y,demo(maquinas_escavadoras,Y),L), write(L), nl,voltar;
			 (C4==13),write('Tanque Militar: '), nl, findall(Y,demo(tanque_militar,Y),L), write(L), nl,voltar;
			 (C4==14),write('Mota: '), nl, findall(Y,demo(mota,Y),L), write(L), nl,voltar;
			 (C4==15),write('Moto Quatro: '), nl, findall(Y,demo(moto_quatro,Y),L), write(L), nl,voltar;
			 (C4==16),write('Carrinha: '), nl, findall(Y,demo(carrinha,Y),L), write(L), nl,voltar;
			 (C4==17),write('Caravana: '), nl, findall(Y,demo(caravana,Y),L), write(L), nl,voltar;
			 (C4==18),write('Barco: '), nl, findall(Y,demo(barco,Y),L), write(L), nl,voltar;
			 (C4==19),write('Ferry: '), nl, findall(Y,demo(ferry,Y),L), write(L), nl,voltar;
			 (C4==20),write('Mota de Água: '), nl, findall(Y,demo(mota_de_agua,Y),L), write(L), nl,voltar;
			 (C4==21),write('Iate: '), nl, findall(Y,demo(iate,Y),L), write(L), nl,voltar;
			 (C4==22),write('Submarino: '), nl, findall(Y,demo(submarino,Y),L), write(L), nl,voltar;
			 (C4==23),write('Avião de Passageiros: '), nl, findall(Y,demo(aviao_passageiros,Y),L), write(L), nl,voltar;
			 (C4==24),write('Avião Militar Jato: '), nl, findall(Y,demo(aviao_militar_jato,Y),L), write(L), nl,voltar;
			 (C4==25),write('Avião Militar Caça: '), nl, findall(Y,demo(aviao_militar,Y),L), write(L), nl,voltar;
			 (C4==26),write('Avião Militar Bombardeiro: '), nl, findall(Y,demo(aviao_militar_bombardeamento,Y),L), write(L), nl,voltar;
			 (C4==27),write('Helecópetro : '), nl, findall(Y,demo(helecopetro,Y),L), write(L), nl,voltar;
			 (C4==28),write('Jato : '), nl, findall(Y,demo(jato,Y),L), write(L), nl,voltar).


	nao_motorizado:- nl,nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                  Escolha o transporte que deseja visualizar                   |'),nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|1.Canoa                                                                        |'),nl,
			write('|2.Veleiro                                                                      |'),nl,
			write('|3.Veiculo de Tração Animal                                                     |'),nl,
			write('|4.Bicicleta                                                                    |'),nl,
			write('|5.Skate                                                                        |'),nl,
			write('|6.Patins                                                                       |'),nl,
			write('|7.Balão                                                                        |'),nl,
			write('|8.Parapente                                                                    |'),nl,
			write('|9.Para-Quedas                                                                  |'),nl,
			write('|10.Asa-Delta                                                                   |'),nl,
			read(C5),
			((C5==1),write('Canoa: '), nl, findall(Y,demo(canoa,Y),L), write(L), nl,voltar;
			 (C5==2),write('Veleiro: '), nl, findall(Y,demo(veleiro,Y),L), write(L), nl,voltar;
			 (C5==3),write('Veiculo de tração animal: '), nl, findall(Y,demo(veiculo_tracao_animal,Y),L), write(L), nl,voltar;
			 (C5==4),write('Bicicleta: '), nl, findall(Y,demo(bicicleta,Y),L), write(L), nl,voltar;
			 (C5==5),write('Skate : '), nl, findall(Y,demo(skate,Y),L), write(L), nl,voltar;
			 (C5==6),write('Patins: '), nl, findall(Y,demo(patins,Y),L), write(L), nl,voltar;
			 (C5==7),write('Balão : '), nl, findall(Y,demo(balao,Y),L), write(L), nl,voltar;
			 (C5==8),write('Parapente : '), nl, findall(Y,demo(parapente,Y),L), write(L), nl,voltar;
			 (C5==9),write('Para-quedas : '), nl, findall(Y,demo(para_quedas,Y),L), write(L), nl,voltar;
			 (C5==10),write('Asa Delta : '), nl, findall(Y,demo(asa_delta,Y),L), write(L), nl,voltar).

	publico:- nl,nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                  Escolha o transporte que deseja visualizar                   |'),nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|1.Canoa                                                                        |'),nl,
			write('|2.Barco                                                                        |'),nl,
			write('|3.Veiculo de Tração Animal                                                     |'),nl,
			write('|4.Ferry                                                                        |'),nl,
			write('|5.Mota de Agua                                                                 |'),nl,
			write('|6.Aviao de Passageiros                                                         |'),nl,
			write('|7.Balão                                                                        |'),nl,
			write('|8.Autocarro                                                                    |'),nl,
			write('|9.Taxi                                                                         |'),nl,
			write('|10.Comboio                                                                     |'),nl,
			write('|11.Metro                                                                       |'),nl,
			write('|12.Eletrico                                                                    |'),nl,
			write('|13.Alfa Pendular                                                               |'),nl,
			read(C6),
			((C6==1),write('Canoa: '), nl, findall(Y,demo(canoa,Y),L), write(L), nl,voltar;
			 (C6==2),write('Barco: '), nl, findall(Y,demo(barco,Y),L), write(L), nl,voltar;
			 (C6==3),write('Veiculo de tração animal: '), nl, findall(Y,demo(veiculo_tracao_animal,Y),L), write(L), nl,voltar;
			 (C6==4),write('Ferry: '), nl, findall(Y,demo(ferry,Y),L), write(L), nl,voltar;
			 (C6==5),write('Mota de Água: '), nl, findall(Y,demo(mota_de_agua,Y),L), write(L), nl,voltar;
			 (C6==6),write('Avião de Passageiros: '), nl, findall(Y,demo(aviao_passageiros,Y),L), write(L), nl,voltar;
			 (C6==7),write('Balão : '), nl, findall(Y,demo(balao,Y),L), write(L), nl,voltar;
			 (C6==8),write('Autocarro: '), nl, findall(Y,demo(autocarro,Y),L), write(L), nl,voltar;
			 (C6==9),write('Taxi: '), nl, findall(Y,demo(taxi,Y),L), write(L), nl,voltar;
			 (C6==10),write('Comboio: '), nl, findall(Y,demo(comboio,Y),L), write(L), nl,voltar;
			 (C6==11),write('Metro: '), nl, findall(Y,demo(metro,Y),L), write(L), nl,voltar;
			 (C6==12),write('Eletrico: '), nl, findall(Y,demo(eletrico,Y),L), write(L), nl,voltar;
			 (C6==13),write('Alfa Pendular: '), nl, findall(Y,demo(alfa_pendular,Y),L), write(L), nl,voltar).

	privado:- nl,nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                  Escolha o transporte que deseja visualizar                   |'),nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|1.Bicicleta                                                                    |'),nl,
			write('|2.Skate                                                                        |'),nl,
			write('|3.Patins                                                                       |'),nl,
			write('|4.Parapente                                                                    |'),nl,
			write('|5.Para-Quedas                                                                  |'),nl,
			write('|6.Asa-Delta                                                                    |'),nl,
			write('|7.Automovel Passageiros                                                        |'),nl,
			write('|8.Automovel Comercial                                                          |'),nl,
			write('|9.Camião de Mercadorias                                                        |'),nl,
			write('|10.Trator Agricola                                                             |'),nl,
			write('|11.Trator Florestal                                                            |'),nl,
			write('|12.Maquina Escavadora                                                          |'),nl,
			write('|13.Tanque Militar                                                              |'),nl,
			write('|14.Mota                                                                        |'),nl,
			write('|15.Moto Quatro                                                                 |'),nl,
			write('|16.Carrinha                                                                    |'),nl,
			write('|17.Caravana                                                                    |'),nl,
			write('|18.Iate                                                                        |'),nl,
			write('|19.Submarino                                                                   |'),nl,
			write('|20.Veleiro                                                                     |'),nl,
			write('|21.Aviao Militar Jato                                                          |'),nl,
			write('|22.Aviao Militar Caça                                                          |'),nl,
			write('|23.Aviao Militar Bombardeamento                                                |'),nl,
			write('|24.Helecopetro                                                                 |'),nl,
			write('|25.Jato                                                                        |'),nl,
			read(C7),
			 ((C7==1),write('Bicicleta: '), nl, findall(Y,demo(bicicleta,Y),L), write(L), nl,voltar;
			 (C7==2),write('Skate : '), nl, findall(Y,demo(skate,Y),L), write(L), nl,voltar;
			 (C7==3),write('Patins: '), nl, findall(Y,demo(patins,Y),L), write(L), nl,voltar;
			 (C7==4),write('Parapente : '), nl, findall(Y,demo(parapente,Y),L), write(L), nl,voltar;
			 (C7==5),write('Para-quedas : '), nl, findall(Y,demo(para_quedas,Y),L), write(L), nl,voltar;
			 (C7==6),write('Asa Delta : '), nl, findall(Y,demo(asa_delta,Y),L), write(L), nl,voltar;
			 (C7==7),write('Automovel Passageiros: '), nl, findall(Y,demo(automovel_passageiros,Y),L), write(L), nl,voltar;
			 (C7==8),write('Automovel Comercial: '), nl, findall(Y,demo(automovel_comercial,Y),L), write(L), nl,voltar;
			 (C7==9),write('Camião de Mercadorias: '), nl, findall(Y,demo(camiao_mercadorias,Y),L), write(L), nl,voltar;
			 (C7==10),write('Trator Agricola: '), nl, findall(Y,demo(tratores_agriculas,Y),L), write(L), nl,voltar;
			 (C7==11),write('Trator Florestal: '), nl, findall(Y,demo(tratores_florestais,Y),L), write(L), nl,voltar;
			 (C7==12),write('Maquina Escavadora: '), nl, findall(Y,demo(maquinas_escavadoras,Y),L), write(L), nl,voltar;
			 (C7==13),write('Tanque Militar: '), nl, findall(Y,demo(tanque_militar,Y),L), write(L), nl,voltar;
			 (C7==14),write('Mota: '), nl, findall(Y,demo(mota,Y),L), write(L), nl,voltar;
			 (C7==15),write('Moto Quatro: '), nl, findall(Y,demo(moto_quatro,Y),L), write(L), nl,voltar;
			 (C7==16),write('Carrinha: '), nl, findall(Y,demo(carrinha,Y),L), write(L), nl,voltar;
			 (C7==17),write('Caravana: '), nl, findall(Y,demo(caravana,Y),L), write(L), nl,voltar;
			 (C7==18),write('Iate: '), nl, findall(Y,demo(iate,Y),L), write(L), nl,voltar;
			 (C7==19),write('Submarino: '), nl, findall(Y,demo(submarino,Y),L), write(L), nl,voltar;
			 (C7==20),write('Veleiro: '), nl, findall(Y,demo(veleiro,Y),L), write(L), nl,voltar;
			 (C7==21),write('Avião Militar Jato: '), nl, findall(Y,demo(aviao_militar_jato,Y),L), write(L), nl,voltar;
			 (C7==22),write('Avião Militar Caça: '), nl, findall(Y,demo(aviao_militar,Y),L), write(L), nl,voltar;
			 (C7==23),write('Avião Militar Bombardeiro: '), nl, findall(Y,demo(aviao_militar_bombardeamento,Y),L), write(L), nl,voltar;
			 (C7==24),write('Helecópetro : '), nl, findall(Y,demo(helecopetro,Y),L), write(L), nl,voltar;
			 (C7==25),write('Jato : '), nl, findall(Y,demo(jato,Y),L), write(L), nl,voltar).



%4

transporteideal:-
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                          Descobra o transporte ideal para si!                 |'),nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|Gostaria de um transporte mais familiar?                                       |'),nl,
			write('|1.Sim                                                                          |'),nl,
			write('|2.Não                                                                          |'),nl,
			read(Q),
			((Q==1),
			write('|Os transportes ideais para si sao:                                             |'),nl,
			findall(X,(demo(X,tipo(familiar))),L), write(L),voltar;		
			 (Q==2),
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|Gostaria de um transporte militar?                                             |'),nl,
			write('|1.Sim                                                                          |'),nl,
			write('|2.Não                                                                          |'),nl,
			read(T),
			((T==1),
			write('|Os transportes ideais para si sao:                                             |'),nl,
			findall(X,(demo(X,tipo(guerra)),demo(X,seguranca(muitoalta))),L1), write(L1),voltar;
			(T==2),
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|Gostaria de um transporte publico?                                             |'),nl,
			write('|1.Sim                                                                          |'),nl,
			write('|2.Não                                                                          |'),nl),
			read(U),
			((U==1),
			write('|Os transportes ideais para si sao:                                             |'),nl,
			findall(X,(demo(X,tipo(publico))),L2), write(L2),voltar;
			(U==2),
			write('|Os transportes ideais para si sao:                                             |'),nl,
			findall(X,(demo(X,tipo(privado))),L2), write(L2),voltar)).


voltar:- nl,nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|                          Quer continuar a explorar o programa?                |'),nl,
			write('|-------------------------------------------------------------------------------|'),nl,
			write('|1.Sim                                                                          |'),nl,                                                                                                                                            
			write('|2.Nao                                                                          |'),nl,
			read(X),
			((X==1),iniciar;
			(X==2),write('Espero que tenha gostado! Obrigado!'),nl,nl,nl,nl,halt).

