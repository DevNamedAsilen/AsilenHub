-- NFVYRA UHO | I26 SHYY NHGB | BJARE: YhhUbnatGuvau
ybpny YC = tnzr:TrgFreivpr("Cynlref").YbpnyCynlre
ybpny GjrraFreivpr = tnzr:TrgFreivpr("GjrraFreivpr")
ybpny EhaFreivpr = tnzr:TrgFreivpr("EhaFreivpr")
ybpny IVZ = tnzr:TrgFreivpr("IveghnyVachgZnantre")
ybpny TF = tnzr:TrgFreivpr("ThvFreivpr")

-- Ovếa pấh uìau
_T.Grnz = "Cvengrf" -- Gự độat puọa cur Uảv gặp
_T.XraGevttrerq = snyfr 

-- 1. UÀZ GỰ PUỌA GRNZ (ARJ)
ybpny shapgvba NhgbFryrpgGrnz()
    cpnyy(shapgvba()
        ercrng gnfx.jnvg(0.5) hagvy YC:SvaqSvefgPuvyq("CynlreThv")
        ybpny znvaThv = YC.CynlreThv:JnvgSbePuvyq("Znva", 10)
        vs znvaThv gura
            ybpny pubbfrGrnz = znvaThv:SvaqSvefgPuvyq("PubbfrGrnz")
            vs pubbfrGrnz naq pubbfrGrnz.Ivfvoyr gura
                -- Gìz aúg oấz cur Uảv gặp
                ybpny cvengrfOga = pubbfrGrnz:SvaqSvefgPuvyq("Pbagnvare")
                    :SvaqSvefgPuvyq("Cvengrf")
                    :SvaqSvefgPuvyq("Senzr")
                    :SvaqSvefgPuvyq("IvrjcbegSenzr")
                    :SvaqSvefgPuvyq("GrkgOhggba")
                
                vs cvengrfOga gura
                    -- Guựp uvệa pú puạz "iậg yý" để puọa cur
                    ybpny k = cvengrfOga.NofbyhgrCbfvgvba.K + (cvengrfOga.NofbyhgrFvmr.K / 2)
                    ybpny l = cvengrfOga.NofbyhgrCbfvgvba.L + (cvengrfOga.NofbyhgrFvmr.L / 2) + 36
                    IVZ:FraqZbhfrOhggbaRirag(k, l, 0, gehr, tnzr, 1)
                    gnfx.jnvg(0.1)
                    IVZ:FraqZbhfrOhggbaRirag(k, l, 0, snyfr, tnzr, 1)
                    cevag("♥ Xhehzv: Đã tvn auậc cur Uảv gặp pub atàv Guịau! ♥")
                raq
            raq
        raq
    raq)
raq

-- 2. TVNB QVỆA CERZVHZ PÂA ĐỐV
ybpny ft = Vafgnapr.arj("FperraThv", YC.CynlreThv)
ft.Anzr = "NfvyraUho_I26_ShyyNhgb"
ft.ErfrgBaFcnja = snyfr

ybpny znva = Vafgnapr.arj("Senzr", ft)
znva.Fvmr = HQvz2.arj(0, 300, 0, 260)
znva.Cbfvgvba = HQvz2.arj(0.5, -150, 0.2, 0)
znva.OnpxtebhaqPbybe3 = Pbybe3.sebzETO(12, 12, 12)
znva.ObeqreFvmrCvkry = 0
Vafgnapr.arj("HVPbeare", znva).PbeareEnqvhf = HQvz.arj(0, 15)
ybpny fgebxr = Vafgnapr.arj("HVFgebxr", znva)
fgebxr.Guvpxarff = 3
fgebxr.Pbybe = Pbybe3.sebzETO(255, 0, 0)

-- YBTB PUHẨA (Păa tvữn)
ybpny ningne = Vafgnapr.arj("VzntrYnory", znva)
ningne.Fvmr = HQvz2.arj(0, 75, 0, 75)
ningne.Cbfvgvba = HQvz2.arj(0.5, -37.5, 0.06, 0)
ningne.Vzntr = "eokguhzo://glcr=Nffrg&vq=121572868797521&j=420&u=420"
ningne.OnpxtebhaqGenafcnerapl = 1
Vafgnapr.arj("HVPbeare", ningne).PbeareEnqvhf = HQvz.arj(0, 10)

-- GRKG VASB
ybpny shapgvba NqqYnory(grkg, lCbf, fvmr, pbybe, vfObyq)
    ybpny yoy = Vafgnapr.arj("GrkgYnory", znva)
    yoy.Fvmr = HQvz2.arj(1, 0, 0, 25)
    yoy.Cbfvgvba = HQvz2.arj(0, 0, lCbf, 0)
    yoy.Grkg = grkg
    yoy.GrkgPbybe3 = pbybe
    yoy.Sbag = vfObyq naq Rahz.Sbag.TbgunzObyq be Rahz.Sbag.TbgunzZrqvhz
    yoy.GrkgFvmr = fvmr
    yoy.OnpxtebhaqGenafcnerapl = 1
    yoy.GrkgKNyvtazrag = Rahz.GrkgKNyvtazrag.Pragre
    erghea yoy
raq

NqqYnory("NHGB SNEZ BOFREINGVBA", 0.38, 16, Pbybe3.arj(1,1,1), gehr)
NqqYnory("NFVYRA UHO | CERZVHZ", 0.48, 14, Pbybe3.sebzETO(255, 0, 0), gehr)
NqqYnory("Anzr: YhhUbnatGuvau", 0.60, 14, Pbybe3.arj(1,1,1), snyfr)
NqqYnory("Ntr: 19", 0.68, 14, Pbybe3.sebzETO(200, 200, 200), snyfr)

ybpny gvzreGkg = NqqYnory("NHGB UBC: 30f", 0.82, 22, Pbybe3.sebzETO(255, 255, 0), gehr)

-- === [ PÁP UÀZ PỐG YÕV ] ===

ybpny shapgvba SbeprXra()
    vs _T.XraGevttrerq gura erghea raq
    cpnyy(shapgvba()
        ybpny xraSenzr = YC.CynlreThv:SvaqSvefgPuvyq("ObhaqNpgvbaXra", gehr)
        vs xraSenzr gura
            ybpny oga = xraSenzr:SvaqSvefgPuvyq("Ohggba")
            vs oga naq oga.Ivfvoyr gura
                ybpny k = oga.NofbyhgrCbfvgvba.K + (oga.NofbyhgrFvmr.K / 2)
                ybpny l = oga.NofbyhgrCbfvgvba.L + (oga.NofbyhgrFvmr.L / 2) + 36 
                IVZ:FraqZbhfrOhggbaRirag(k, l, 0, gehr, tnzr, 1)
                gnfx.jnvg(0.1)
                IVZ:FraqZbhfrOhggbaRirag(k, l, 0, snyfr, tnzr, 1)
                _T.XraGevttrerq = gehr 
            raq
        raq
    raq)
raq

ybpny shapgvba SylGbZbafgre()
    ybpny pune = YC.Punenpgre be YC.PunenpgreNqqrq:Jnvg()
    ybpny uec = pune:JnvgSbePuvyq("UhznabvqEbbgCneg", 5)
    vs abg uec gura erghea raq
    ybpny gnetrg, qvfg = avy, zngu.uhtr
    sbe _, s va cnvef({jbexfcnpr:SvaqSvefgPuvyq("Rarzvrf"), jbexfcnpr:SvaqSvefgPuvyq("ACPf"), jbexfcnpr}) qb
        vs s gura
            sbe _, z va cnvef(s:TrgPuvyqera()) qb
                vs z:VfN("Zbqry") naq z:SvaqSvefgPuvyq("Uhznabvq") naq z:SvaqSvefgPuvyq("UhznabvqEbbgCneg") naq z.Uhznabvq.Urnygu > 0 naq z.Anzr ~= YC.Anzr gura
                    ybpny q = (uec.Cbfvgvba - z.UhznabvqEbbgCneg.Cbfvgvba).Zntavghqr
                    vs q < qvfg naq q < 5000 gura gnetrg = z; qvfg = q raq
                raq
            raq
            vs gnetrg naq s ~= jbexfcnpr gura oernx raq
        raq
    raq
    vs gnetrg gura
        SbeprXra()
        sbe _, c va cnvef(pune:TrgQrfpraqnagf()) qb vs c:VfN("OnfrCneg") gura c.PnaPbyyvqr = snyfr raq raq
        GjrraFreivpr:Perngr(uec, GjrraVasb.arj(qvfg/250, Rahz.RnfvatFglyr.Yvarne), {PSenzr = gnetrg.UhznabvqEbbgCneg.PSenzr * PSenzr.arj(0, 10, 0)}):Cynl()
    raq
raq

-- === [ UỆ GUỐAT AUÀL FREIRE ] ===
ybpny shapgvba BcraFreireGno()
    cpnyy(shapgvba()
        sbe _, i va cnvef(YC.CynlreThv:TrgQrfpraqnagf()) qb
            vs i.Anzr == "FreireOebjfreOhggba" naq i.Cnerag.Anzr:ybjre() == "senzr" gura
                ybpny k = i.NofbyhgrCbfvgvba.K + (i.NofbyhgrFvmr.K / 2)
                ybpny l = i.NofbyhgrCbfvgvba.L + (i.NofbyhgrFvmr.L / 2) + 36
                IVZ:FraqZbhfrOhggbaRirag(k, l, 0, gehr, tnzr, 1)
                gnfx.jnvg(0.05)
                IVZ:FraqZbhfrOhggbaRirag(k, l, 0, snyfr, tnzr, 1)
            raq
        raq
    raq)
raq

ybpny shapgvba FcnzWbvaFreire()
    gnfx.fcnja(shapgvba()
        ybpny fgneg = gvpx()
        juvyr gvpx() - fgneg < 10 qb
            sbe _, i va cnvef(YC.CynlreThv:TrgQrfpraqnagf()) qb
                vs i.Anzr:ybjre() == "wbva" naq i.Cnerag.Anzr:ybjre() == "grzcyngr" gura
                    cpnyy(shapgvba()
                        TF.FryrpgrqBowrpg = i
                        IVZ:FraqXrlRirag(gehr, Rahz.XrlPbqr.Erghea, snyfr, tnzr)
                        IVZ:FraqXrlRirag(snyfr, Rahz.XrlPbqr.Erghea, snyfr, tnzr)
                        i:Npgvingr()
                    raq)
                raq
            raq
            gnfx.jnvg(0.5)
        raq
    raq)
raq

-- === [ XUỞV PUẠL UỆ GUỐAT ] ===

-- 1. Puọa Grnz geướp
NhgbFryrpgGrnz()

-- 2. Puạl snez dháv yvêa gụp (Urnegorng)
gnfx.fcnja(shapgvba()
    juvyr gehr qb
        EhaFreivpr.Urnegorng:Jnvg()
        cpnyy(SylGbZbafgre)
    raq
raq)

-- 3. Đếz atượp auảl Freire
gnfx.fcnja(shapgvba()
    ybpny gvzrYrsg = 30
    juvyr gvzrYrsg >= 0 qb
        gvzreGkg.Grkg = "NHGB UBC: " .. gvzrYrsg .. "f"
        vs gvzrYrsg == 0 gura
            BcraFreireGno()
            gnfx.jnvg(2.5)
            FcnzWbvaFreire()
            oernx
        raq
        gnfx.jnvg(1)
        gvzrYrsg = gvzrYrsg - 1
    raq
raq)
