import 'package:flutter/foundation.dart';
import 'package:to_do_list/modal/task_model.dart';
import 'dart:collection';

class ListOfTask extends ChangeNotifier {
  final List<Task> _nameOfList = [
    Task(
      task: '0. Love your self',
    ),
    Task(
      task: '1. Trust your inner calling over outside opinions',
    ),
    Task(
      task: '2. Spend less time being angry and more time healing',
    ),
    Task(
      task: '3. Reserve your energy for people who you never need to perform for',
    ),
    Task(
      task: '4. Identify the areas in your life where you want to set goals',
    ),
    Task(
      task: '5. Create SMART goals: Specific, Measurable, Achievable, Relevant, and Time-bound. ',
    ),
    Task(
      task: '6. Identify any potential obstacles or challenges that could prevent you from achieving your goals, and come up with a plan to overcome them.',
    ),
    Task(
      task: '7. Seek support and accountability. This can be from friends, family, a coach, or even a support group.',
    ),
    Task(
      task: '8. Celebrate your accomplishments, no matter how small. This will help to keep you motivated and reinforce the positive habits that are helping you to achieve your goals.',
    ),
    Task(task: '9. Review and adjust your goals regularly. As you make progress, you may find that your goals have changed or that you need to adjust your plan in order to stay on track. This is normal and can be a good opportunity to reassess and make any necessary changes.')
    ,Task(task: '10.Stay flexible and open to new opportunities. While it\'s important to have a plan and stick to it, be open to new ideas and opportunities that may come your way. These can often lead to new growth and development. ')
  ];
  void addTasksInList(String taskName) {
    _nameOfList.add(Task(task: taskName));
    notifyListeners();
  }

  UnmodifiableListView<Task> get getTask {
    return UnmodifiableListView(_nameOfList);
  }

  int getCount() {
    return _nameOfList.length;
  }

  void upDateState(bool taskState,int currentIndex) {
    _nameOfList[currentIndex].isDone=taskState;
    notifyListeners();
  }
}
