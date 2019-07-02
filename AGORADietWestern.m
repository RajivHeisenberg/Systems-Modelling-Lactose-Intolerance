function [modelJointWestern]=AGORADietWestern(modelJoint)

% A function for automatically assigning a western diet defined in this
% script to the joint models.

% INPUT : Joint model structure
% OUPUT : Joint model structure with dietary constraints implemented

%changing the lbs and ubs or reactions with -1000 and 1000 respec to -10 and
%10. comment the following 2 lines to avoid this step.
%  modelJoint.lb(modelJoint.lb==-1000)=-10;
%  modelJoint.ub(modelJoint.ub==1000)=10;

modelJoint = changeRxnBounds(modelJoint,modelJoint.rxns(strmatch('EX_',modelJoint.rxns)),0,'l');
%Commen the next 5 lines to revert to original diet function
for i =1:length(modelJoint.rxns)
    if contains(modelJoint.rxns{i},'(b)') || contains(modelJoint.rxns{i},'(e)')
        modelJoint=changeRxnBounds(modelJoint,modelJoint.rxns{i},0,'l');
    end
end

model=modelJoint;
% simple sugars and starch
model=changeRxnBounds(model,'EX_fru[u]',-0.148986,'l');
model=changeRxnBounds(model,'EX_glc[u]',-0.148986,'l');
model=changeRxnBounds(model,'EX_gal[u]',-0.148986,'l');
model=changeRxnBounds(model,'EX_man[u]',-0.148986,'l');
model=changeRxnBounds(model,'EX_mnl[u]',-0.148986,'l');
model=changeRxnBounds(model,'EX_fuc_L[u]',-0.148986,'l');
model=changeRxnBounds(model,'EX_glcn[u]',-0.148986,'l');
model=changeRxnBounds(model,'EX_rmn[u]',-0.148986,'l');
model=changeRxnBounds(model,'EX_arab_L[u]',-0.178783,'l');
model=changeRxnBounds(model,'EX_drib[u]',-0.178783,'l');
model=changeRxnBounds(model,'EX_rib_D[u]',-0.178783,'l');
model=changeRxnBounds(model,'EX_xyl_D[u]',-0.178783,'l');
model=changeRxnBounds(model,'EX_oxa[u]',-0.446957,'l');
model=changeRxnBounds(model,'EX_lcts[u]',-0.074493,'l');
model=changeRxnBounds(model,'EX_malt[u]',-0.074493,'l');
model=changeRxnBounds(model,'EX_sucr[u]',-0.074493,'l');
model=changeRxnBounds(model,'EX_melib[u]',-0.074493,'l');
model=changeRxnBounds(model,'EX_cellb[u]',-0.074493,'l');
model=changeRxnBounds(model,'EX_tre[u]',-0.074493,'l');
model=changeRxnBounds(model,'EX_strch1[u]',-0.257339,'l');
% fiber
model=changeRxnBounds(model,'EX_amylopect900[u]',-0.0000156731,'l');
model=changeRxnBounds(model,'EX_amylose300[u]',-0.0000470194,'l');
model=changeRxnBounds(model,'EX_arabinan101[u]',-0.0001662770,'l');
model=changeRxnBounds(model,'EX_arabinogal[u]',-0.0000219148,'l');
model=changeRxnBounds(model,'EX_arabinoxyl[u]',-0.0003066486,'l');
model=changeRxnBounds(model,'EX_bglc[u]',-0.0000000705,'l');
model=changeRxnBounds(model,'EX_cellul[u]',-0.0000282117,'l');
model=changeRxnBounds(model,'EX_dextran40[u]',-0.0001763229,'l');
model=changeRxnBounds(model,'EX_galmannan[u]',-0.0000141058,'l');
model=changeRxnBounds(model,'EX_glcmannan[u]',-0.0000328807,'l');
model=changeRxnBounds(model,'EX_homogal[u]',-0.0001282349,'l');
model=changeRxnBounds(model,'EX_inulin[u]',-0.0004701945,'l');
model=changeRxnBounds(model,'EX_kestopt[u]',-0.0028211667,'l');
model=changeRxnBounds(model,'EX_levan1000[u]',-0.0000141058,'l');
model=changeRxnBounds(model,'EX_lmn30[u]',-0.0004701945,'l');
model=changeRxnBounds(model,'EX_lichn[u]',-0.0000829755,'l');
model=changeRxnBounds(model,'EX_pect[u]',-0.0000333866,'l');
model=changeRxnBounds(model,'EX_pullulan1200[u]',-0.0000117549,'l');
model=changeRxnBounds(model,'EX_raffin[u]',-0.0047019445,'l');
model=changeRxnBounds(model,'EX_rhamnogalurI[u]',-0.0000144923,'l');
model=changeRxnBounds(model,'EX_rhamnogalurII[u]',-0.0002669874,'l');
model=changeRxnBounds(model,'EX_starch1200[u]',-0.0000117549,'l');
model=changeRxnBounds(model,'EX_xylan[u]',-0.0000320587,'l');
model=changeRxnBounds(model,'EX_xyluglc[u]',-0.0000131462,'l');
% fat
model=changeRxnBounds(model,{'EX_arachd[u]'},-0.003328,'l');
model=changeRxnBounds(model,{'EX_chsterol[u]'},-0.004958,'l');
model=changeRxnBounds(model,{'EX_glyc[u]'},-1.799655,'l');
model=changeRxnBounds(model,{'EX_hdca[u]'},-0.396371,'l');
model=changeRxnBounds(model,{'EX_hdcea[u]'},-0.036517,'l');
model=changeRxnBounds(model,{'EX_lnlc[u]'},-0.359109,'l');
model=changeRxnBounds(model,{'EX_lnlnca[u]'},-0.017565,'l');
model=changeRxnBounds(model,{'EX_lnlncg[u]'},-0.017565,'l');
model=changeRxnBounds(model,{'EX_ocdca[u]'},-0.169283,'l');
model=changeRxnBounds(model,{'EX_ocdcea[u]'},-0.681445,'l');
model=changeRxnBounds(model,{'EX_octa[u]'},-0.012943,'l');
model=changeRxnBounds(model,{'EX_ttdca[u]'},-0.068676,'l');
% protein
model=changeRxnBounds(model,{'EX_ala_L[u]';'EX_ser_L[u]';'EX_cys_L[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_arg_L[u]';'EX_ile_L[u]';'EX_leu_L[u]';'EX_lys_L[u]';'EX_his_L[u]'},-0.15,'l');
model=changeRxnBounds(model,{'EX_asn_L[u]';'EX_asp_L[u]';'EX_thr_L[u]'},-0.225,'l');
model=changeRxnBounds(model,{'EX_glu_L[u]';'EX_met_L[u]';'EX_gln_L[u]';'EX_pro_L[u]';'EX_val_L[u]'},-0.18,'l');
model=changeRxnBounds(model,{'EX_phe_L[u]';'EX_tyr_L[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_gly[u]'},-0.45,'l');
model=changeRxnBounds(model,{'EX_trp_L[u]'},-0.08182,'l');

% minerals and vitamins
% bacterial requirements pooled
model=changeRxnBounds(model,{'EX_thm[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_ribflv[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_nac[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_btn[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_pnto_R[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_pydxn[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_pydx[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_pydam[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_fol[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_adpcbl[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_pheme[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_cbl1[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_chol[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_h2s[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_so4[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_spmd[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_na1[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_ca2[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_cobalt2[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_cl[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_k[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_fe2[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_fe3[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_fe3dcit[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_mg2[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_mn2[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_mobd[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_cu2[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_zn2[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_sel[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_pime[u]'},-1,'l');
model=changeRxnBounds(model,{'EX_mqn8[u]'},-1,'l');
model=changeRxnBounds(model,'EX_12dgr180[u]',-1,'l');
model=changeRxnBounds(model,'EX_26dap_M[u]',-1,'l');
model=changeRxnBounds(model,'EX_2obut[u]',-1,'l');
model=changeRxnBounds(model,'EX_3mop[u]',-1,'l');
model=changeRxnBounds(model,'EX_4hbz[u]',-1,'l');
model=changeRxnBounds(model,'EX_ac[u]',-1,'l');
model=changeRxnBounds(model,'EX_acgam[u]',-1,'l');
model=changeRxnBounds(model,'EX_acnam[u]',-1,'l');
model=changeRxnBounds(model,'EX_acmana[u]',-1,'l');
model=changeRxnBounds(model,'EX_ade[u]',-1,'l');
model=changeRxnBounds(model,'EX_adn[u]',-1,'l');
model=changeRxnBounds(model,'EX_ala_D[u]',-1,'l');
model=changeRxnBounds(model,'EX_arab_D[u]',-1,'l');
model=changeRxnBounds(model,'EX_cgly[u]',-1,'l');
model=changeRxnBounds(model,'EX_chor[u]',-1,'l');
model=changeRxnBounds(model,'EX_cit[u]',-1,'l');
model=changeRxnBounds(model,'EX_amet[u]',-1,'l');
model=changeRxnBounds(model,'EX_csn[u]',-1,'l');
model=changeRxnBounds(model,'EX_cytd[u]',-1,'l');
model=changeRxnBounds(model,'EX_dad_2[u]',-1,'l');
model=changeRxnBounds(model,'EX_dcyt[u]',-1,'l');
model=changeRxnBounds(model,'EX_ddca[u]',-1,'l');
model=changeRxnBounds(model,'EX_dgsn[u]',-1,'l');
model=changeRxnBounds(model,'EX_for[u]',-1,'l');
model=changeRxnBounds(model,'EX_fum[u]',-1,'l');
model=changeRxnBounds(model,'EX_glyc3p[u]',-1,'l');
model=changeRxnBounds(model,'EX_gsn[u]',-1,'l');
model=changeRxnBounds(model,'EX_gthox[u]',-1,'l');
model=changeRxnBounds(model,'EX_gua[u]',-1,'l');
model=changeRxnBounds(model,'EX_h[u]',-1,'l');
model=changeRxnBounds(model,'EX_hxan[u]',-1,'l');
model=changeRxnBounds(model,'EX_indole[u]',-1,'l');
model=changeRxnBounds(model,'EX_lanost[u]',-1,'l');
model=changeRxnBounds(model,'EX_metsox_S_L[u]',-1,'l');
model=changeRxnBounds(model,'EX_mqn7[u]',-1,'l');
model=changeRxnBounds(model,'EX_ncam[u]',-1,'l');
model=changeRxnBounds(model,'EX_nmn[u]',-1,'l');
model=changeRxnBounds(model,'EX_orn[u]',-1,'l');
model=changeRxnBounds(model,'EX_pheme[u]',-1,'l');
model=changeRxnBounds(model,'EX_pi[u]',-1,'l');
model=changeRxnBounds(model,'EX_ptrc[u]',-1,'l');
model=changeRxnBounds(model,'EX_pydx5p[u]',-1,'l');
model=changeRxnBounds(model,'EX_q8[u]',-1,'l');
model=changeRxnBounds(model,'EX_sheme[u]',-1,'l');
model=changeRxnBounds(model,'EX_spmd[u]',-1,'l');
model=changeRxnBounds(model,'EX_thm[u]',-1,'l');
model=changeRxnBounds(model,'EX_thymd[u]',-1,'l');
model=changeRxnBounds(model,'EX_ura[u]',-1,'l');
model=changeRxnBounds(model,'EX_uri[u]',-1,'l');
model=changeRxnBounds(model,'EX_xan[u]',-1,'l');
model=changeRxnBounds(model,'EX_2dmmq8[u]',-1,'l');
model=changeRxnBounds(model,'EX_4abz[u]',-1,'l');
model=changeRxnBounds(model,'EX_amp[u]',-1,'l');
model=changeRxnBounds(model,'EX_fald[u]',-1,'l');
model=changeRxnBounds(model,'EX_gam[u]',-1,'l');
model=changeRxnBounds(model,'EX_glu_D[u]',-1,'l');
model=changeRxnBounds(model,'EX_gthrd[u]',-1,'l');
model=changeRxnBounds(model,'EX_h2[u]',-1,'l');
model=changeRxnBounds(model,'EX_no2[u]',-1,'l');
% only for methanogens
model=changeRxnBounds(model,'EX_meoh[u]',-10,'l');
% other compounds
model=changeRxnBounds(model,'EX_h2o[u]',-10,'l');

modelJointWestern=model;

end
