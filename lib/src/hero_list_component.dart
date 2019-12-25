import 'package:angular/angular.dart';
import 'dart:async';

import 'hero.dart';
import 'hero_component.dart';
import 'mock_heroes.dart';
import 'hero_service.dart';


@Component(
  selector: 'my-heroes',
  templateUrl: 'hero_list_component.html',
  directives: [coreDirectives, HeroComponent],
  styleUrls: ['hero_list_component.css'],
//  providers: [ClassProvider(HeroService)],
)
class HeroListComponent implements OnInit {

  final HeroService _heroService;
  List<Hero> heroes;
  Hero selected;

  HeroListComponent(this._heroService);

  Future<void> _getHeroes() async {
    heroes = await _heroService.getAll();
  }

  void ngOnInit() => _getHeroes();

  void onSelect(Hero hero) => selected = hero;
}


