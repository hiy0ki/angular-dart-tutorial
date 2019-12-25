import 'hero.dart';
import 'mock_heroes.dart';
import 'dart:async';

class HeroService {
  Future<List<Hero>> getAll() async => mockHeroes;

  // 非同期でゆっくり取得することを確認できる用のメソッド
  Future<List<Hero>> getAllSlowly() {
    return Future.delayed(Duration(seconds: 2), getAll);
  }
}
