import 'package:angular/angular.dart';

@Component(
  selector: 'little-tour',
  template: '''
  <div>
    <input #newHero
      (keyup.enter)="addHero(newHero.value)"
      (blur)="addHero(newHero.value); newHero.value='' ">
      <button (click)="addHero(newHero.value)">Add</button>
  </div>
  <p>Remove a Hero</p>
  <div>
    <input #oldHero
      (keyup.enter)="removeHero(oldHero.value)"
      (blur)="removeHero(oldHero.value); oldHero.value='' ">
      <button (click)="removeHero(oldHero.value)">Remove</button>
  </div>
    
    <ul>
      <li *ngFor="let hero of heroes">
        {{hero}}
      </li>
    </ul>
  ''',
  directives: [coreDirectives],
)

class LittleTourComponent {
  List<String> heroes = ['Windstorm', 'Bombasto', 'Magneta', 'Tornado'];

  void addHero(String newHero){
    if(newHero == null || newHero.isEmpty) return;
    heroes.add(newHero);
  }

  void removeHero(String oldHero){
    if(oldHero != null || oldHero.isNotEmpty)
    {
      heroes.remove(oldHero);
    }
  }
}