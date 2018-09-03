Server files of the project.

################################
# New commands of CONFIG files #
################################


// About starting maps.

MAP1_ROUGE - change the id of starting map of red kingdom
MAP1_JAUNE - change the id of starting map of yellow kingdom
MAP1_BLEU - change the id of starting map of blue kingdom

MAP1_ROUGE_X - change coordinate X of start in map of red kingdom
MAP1_ROUGE_Y - change coordinate X of start in map of red kingdom

MAP1_JAUNE_X - change coordinate X of start in map of yellow kingdom
MAP1_JAUNE_Y - change coordinate X of start in map of yellow kingdom

MAP1_BLEU_X - change coordinate X of start in map of blue kingdom
MAP1_BLEU_Y - change coordinate X of start in map of blue kingdom

// About systems.

SYSTEM_CHOIX_VNUM_SHOP - 1 for enable, 0 for disable. Enable the custom design for shop.
SYSTEM_CARTE_CADEAU - 1 for enable, 0 for disable. Enable the daily gift system.
SYSTEM_BUFF_GROUP - 1 for enable, 0 for disable. Enable Buff group system.
SYSTEM_NOUVEAU_SKILL_7ET8 - 1 for enable, 0 for disable. Enable skill 7th and 8th.
SYSTEM_TITRE - 1 for enable, 0 for disable. Enable title system.
SYSTEM_OFFLINE_SHOP - 1 for enable, 0 for disable. Enable Offline Shop System.

###################################################
# Issues who need to be fix on Server Source part #
###################################################

-> Result: According to the src of the project in server part, a issue on the network packet is not fixed yet, you can receive random packet error and random disconnection. This issue will be fixed, you can also help me to fix it by forking or send a issue message here: https://github.com/MetinRefresh/Metin-Refresh-Server-Src , potential issue:

-> Potential Issue: [Merged Packet], since the new system of fly, request of packet are used each 100ms approximatively, metin is limited on packet receive and can get lags and can receive merged packet, a new system should be made for receive faster packets.

