# TSNG Original

# Spice Paprika

craftingTable.addShapeless("spice_paprika1", <item:drinkbeer:spice_blaze_paprika>, [<item:minecraft:bowl>, <tag:items:forge:crops/chile_pepper>]);
craftingTable.addShapeless("spice_paprika2", <item:drinkbeer:spice_dried_eglia_bud>, [<item:minecraft:bowl>, <item:minecraft:allium>]);
craftingTable.addShapeless("spice_paprika3", <item:drinkbeer:spice_smoked_eglia_bud>, [<item:minecraft:bowl>, <item:minecraft:allium>, <item:minecraft:allium>]);
craftingTable.addShapeless("spice_paprika4", <item:drinkbeer:spice_amethyst_nigella_seeds>, [<item:minecraft:bowl>, <item:minecraft:amethyst_shard>, <tag:items:forge:seeds>]);
craftingTable.addShapeless("spice_paprika5", <item:drinkbeer:spice_citrine_nigella_seeds>, [<item:minecraft:bowl>, <tag:items:forge:nuggets/brass>, <tag:items:forge:seeds>]);
craftingTable.addShapeless("spice_paprika6", <item:drinkbeer:spice_ice_mint>, [<item:minecraft:bowl>, <item:neapolitan:mint_leaves>, <tag:items:forge:ice_cubes>]);
craftingTable.addShapeless("spice_paprika7", <item:drinkbeer:spice_ice_patchouli>, [<item:minecraft:bowl>, <item:terraqueous:lavender>, <tag:items:forge:ice_cubes>]);
craftingTable.addShapeless("spice_paprika8", <item:drinkbeer:spice_storm_shards>, [<item:minecraft:bowl>, <item:byg:subzero_crystal_shard>, <tag:items:forge:dusts/prismarine>]);
craftingTable.addShapeless("spice_paprika9", <item:drinkbeer:spice_roasted_red_pine_nuts>, [<item:minecraft:bowl>, <tag:items:forge:nuts>]);
craftingTable.addShapeless("spice_paprika10", <item:drinkbeer:spice_glace_goji_berries>, [<item:minecraft:bowl>, <tag:items:forge:fruits>, <tag:items:forge:sugar>]);
craftingTable.addShapeless("spice_paprika11", <item:drinkbeer:spice_dried_selaginella>, [<item:minecraft:bowl>, <tag:items:forge:crops/vanilla>]);
craftingTable.addShapeless("spice_paprika12", <item:drinkbeer:spice_frozen_persimmon>, [<item:minecraft:bowl>, <tag:items:forge:crops/tomato>]);
craftingTable.addShapeless("spice_paprika13", <item:drinkbeer:spice_roasted_pecans>, [<item:minecraft:bowl>, <tag:items:forge:nuts/walnut>, <tag:items:forge:nuts/walnut>]);
craftingTable.addShapeless("spice_paprika14", <item:drinkbeer:spice_silver_needle_white_tea>, [<item:minecraft:bowl>, <tag:items:forge:crops/tea>, <tag:items:forge:crops/tea>]);
craftingTable.addShapeless("spice_paprika15", <item:drinkbeer:spice_golden_cinnamon_powder>, [<item:minecraft:bowl>, <tag:items:forge:crops/cinnamon>]);

# Game Stage

craftingTable.addShapeless("steelleaves", <item:twilightforest:steeleaf_ingot> * 2, [<item:twilightforest:raw_ironwood>, <item:twilightforest:raw_ironwood>, <item:twilightforest:twilight_oak_leaves>, <item:twilightforest:twilight_oak_leaves>, <item:twilightforest:twilight_oak_leaves>, <item:twilightforest:twilight_oak_leaves>, <item:twilightforest:twilight_oak_leaves>, <item:twilightforest:twilight_oak_leaves>, <item:twilightforest:twilight_oak_leaves>]);

craftingTable.addShapeless("liveroot", <item:twilightforest:liveroot>, [<item:twilightforest:canopy_log>, <item:twilightforest:canopy_log>, <tag:items:forge:vegetables>, <tag:items:forge:vegetables>, <item:twilightforest:canopy_leaves>, <item:twilightforest:canopy_leaves>, <item:twilightforest:canopy_sapling>, <item:minecraft:red_mushroom>]);

# Coffeebean Change

craftingTable.addShapeless("coffeebean1", <item:farmersrespite:coffee_beans>, [<tag:items:forge:crops/coffee_beans>]);
craftingTable.addShapeless("coffeebean2", <item:croptopia:coffee_beans>, [<tag:items:forge:crops/coffee_beans>]);
craftingTable.addShapeless("coffeebean3", <item:createcafe:coffee_beans>, [<tag:items:forge:crops/coffee_beans>]);

# Ban Item

craftingTable.remove(<item:minecraft:enchanting_table>);
craftingTable.remove(<item:terraqueous:ender_table>);
craftingTable.remove(<item:terraqueous:craftbench>);
craftingTable.remove(<item:terraqueous:cloud_craftbench>);
craftingTable.remove(<item:drinkbeer:trade_box_normal>);

import crafttweaker.api.events.CTEventManager;
CTEventManager.register<crafttweaker.api.event.entity.player.interact.RightClickBlockEvent>((e)=>{if(e.player.level.getBlockState(e.blockPos)==<blockstate:minecraft:enchanting_table>){e.useBlock=<constant:forge:event/result:deny>;}});
CTEventManager.register<crafttweaker.api.event.entity.player.interact.RightClickBlockEvent>((e)=>{if(e.player.level.getBlockState(e.blockPos)==<blockstate:terraqueous:ender_table>){e.useBlock=<constant:forge:event/result:deny>;}});
CTEventManager.register<crafttweaker.api.event.entity.player.interact.RightClickBlockEvent>((e)=>{if(e.player.level.getBlockState(e.blockPos)==<blockstate:terraqueous:cloud_craftbench>){e.useBlock=<constant:forge:event/result:deny>;}});
CTEventManager.register<crafttweaker.api.event.entity.player.interact.RightClickBlockEvent>((e)=>{if(e.player.level.getBlockState(e.blockPos)==<blockstate:terraqueous:craftbench>){e.useBlock=<constant:forge:event/result:deny>;}});


CTEventManager.register<crafttweaker.api.event.entity.player.interact.RightClickBlockEvent>((e)=>{
        if(e.itemStack.definition==<item:minecraft:enchanting_table>.definition){
                e.useItem=<constant:forge:event/result:deny>;
        }
});
CTEventManager.register<crafttweaker.api.event.entity.player.interact.RightClickBlockEvent>((e)=>{
        if(e.itemStack.definition==<item:terraqueous:ender_table>.definition){
                e.useItem=<constant:forge:event/result:deny>;
        }
});
CTEventManager.register<crafttweaker.api.event.entity.player.interact.RightClickBlockEvent>((e)=>{
        if(e.itemStack.definition==<item:terraqueous:cloud_craftbench>.definition){
                e.useItem=<constant:forge:event/result:deny>;
        }
});
CTEventManager.register<crafttweaker.api.event.entity.player.interact.RightClickBlockEvent>((e)=>{
        if(e.itemStack.definition==<item:terraqueous:craftbench>.definition){
                e.useItem=<constant:forge:event/result:deny>;
        }
});
CTEventManager.register<crafttweaker.api.event.entity.player.interact.RightClickBlockEvent>((e)=>{
        if(e.itemStack.definition==<item:drinkbeer:trade_box_normal>.definition){
                e.useItem=<constant:forge:event/result:deny>;
        }
});

# Simple Sandstone

craftingTable.remove(<item:minecraft:sandstone>);
craftingTable.remove(<item:minecraft:red_sandstone>);
craftingTable.addShapeless("simplesandstone", <item:minecraft:sandstone>, [<item:minecraft:sand>]);
craftingTable.addShapeless("simpleredsandstone", <item:minecraft:red_sandstone>, [<item:minecraft:red_sand>]);

craftingTable.addShapeless("makeoakwardrobe", <item:furnish:oak_wardrobe>, [<item:furnish:oak_cabinet>, <item:furnish:oak_cabinet>]);
craftingTable.addShapeless("makesprucewardrobe", <item:furnish:spruce_wardrobe>, [<item:furnish:spruce_cabinet>, <item:furnish:spruce_cabinet>]);
craftingTable.addShapeless("makebirchwardrobe", <item:furnish:birch_wardrobe>, [<item:furnish:birch_cabinet>, <item:furnish:birch_cabinet>]);
craftingTable.addShapeless("makejunglewardrobe", <item:furnish:jungle_wardrobe>, [<item:furnish:jungle_cabinet>, <item:furnish:jungle_cabinet>]);
craftingTable.addShapeless("makeacaciawardrobe", <item:furnish:acacia_wardrobe>, [<item:furnish:acacia_cabinet>, <item:furnish:acacia_cabinet>]);
craftingTable.addShapeless("makedarkoakwardrobe", <item:furnish:dark_oak_wardrobe>, [<item:furnish:dark_oak_cabinet>, <item:furnish:dark_oak_cabinet>]);
craftingTable.addShapeless("makecrimsonwardrobe", <item:furnish:crimson_wardrobe>, [<item:furnish:crimson_cabinet>, <item:furnish:crimson_cabinet>]);
craftingTable.addShapeless("makewarpedwardrobe", <item:furnish:warped_wardrobe>, [<item:furnish:warped_cabinet>, <item:furnish:warped_cabinet>]);

craftingTable.addShapeless("craftholboellialatifoliaseed", <item:fruitstack:holboellia_latifolia_seeds>, [<item:fruitstack:holboellia_latifolia>]);
craftingTable.addShapeless("crafthuoshenfruitseed", <item:fruitstack:huoshen_fruit_seeds>, [<item:fruitstack:huoshen_fruit>]);
craftingTable.addShapeless("craftseptembermelonseed", <item:fruitstack:september_melon_seeds>, [<item:fruitstack:september_melon>]);
craftingTable.addShapeless("craftgoldenpuresheephornhoneyseed", <item:fruitstack:golden_pure_sheep_horn_honey_seeds>, [<item:fruitstack:golden_pure_sheep_horn_honey>]);

# FDC TSNG Server

# Tuff

craftingTable.addShapeless("tuff", <item:minecraft:tuff>, [<item:minecraft:cobblestone>, <item:supplementaries:ash>]);

# Element Paper

craftingTable.addShapeless("paper1", <item:minecraft:paper>, [<item:urushi:wood_element_paper>]);
craftingTable.addShapeless("paper2", <item:minecraft:paper>, [<item:urushi:fire_element_paper>]);
craftingTable.addShapeless("paper3", <item:minecraft:paper>, [<item:urushi:earth_element_paper>]);
craftingTable.addShapeless("paper4", <item:minecraft:paper>, [<item:urushi:metal_element_paper>]);
craftingTable.addShapeless("paper5", <item:minecraft:paper>, [<item:urushi:water_element_paper>]);

# Ban Item

craftingTable.remove(<item:drinkbeer:spice_storm_shards>);

# Fix Recipes

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientTransformed;

craftingTable.remove(<item:croptopia:bacon>);
craftingTable.addShapeless("bacon", <item:croptopia:bacon>, [<item:minecraft:porkchop>]);

craftingTable.addShaped("beef_jerky", <item:croptopia:beef_jerky> * 14, [
[<tag:items:forge:salts>, <tag:items:forge:salts>, <tag:items:forge:salts>],
[<tag:items:forge:salts>, <item:minecraft:beef>, <tag:items:forge:salts>],
[<tag:items:forge:salts>, <tag:items:forge:salts>, <tag:items:forge:salts>]]);

craftingTable.addShaped("pork_jerky", <item:croptopia:pork_jerky> * 14, [
[<tag:items:forge:salts>, <tag:items:forge:salts>, <tag:items:forge:salts>],
[<tag:items:forge:salts>, <item:minecraft:porkchop>, <tag:items:forge:salts>],
[<tag:items:forge:salts>, <tag:items:forge:salts>, <tag:items:forge:salts>]]);
