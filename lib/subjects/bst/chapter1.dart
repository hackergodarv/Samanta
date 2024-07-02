import 'dart:async';

import 'package:flame/camera.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame_tiled/flame_tiled.dart';

class Chapter1 extends FlameGame{
  late final CameraComponent cam;
  final world=Background();
  @override
  FutureOr<void> onLoad() async {
    await images.loadAllImages();
    cam=CameraComponent.withFixedResolution(world:world, width: 1920 , height: 1080);
    cam.viewfinder.anchor=Anchor.topLeft;
    addAll([world,cam]);
    // TODO: implement onLoad
    return super.onLoad();
  }

}
class Background extends World{
 late TiledComponent world_background;
 @override
  FutureOr<void> onLoad() async{
    world_background=await TiledComponent.load('BackGround.tmx', Vector2.all(16));
    add(world_background);
    // TODO: implement onLoad
    return super.onLoad();
  }
}