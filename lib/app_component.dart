import 'package:angular/angular.dart';
import 'src/little_tour_component.dart';
import 'src/loop_back_component.dart';
import 'src/click_me_component.dart';
import 'src/click_me2_component.dart';
import 'src/keyup_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [LittleTourComponent],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
