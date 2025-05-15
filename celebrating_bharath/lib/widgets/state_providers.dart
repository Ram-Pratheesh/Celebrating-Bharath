import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectionState {
  final String? selectedState;
  final bool showInfo;

  SelectionState({this.selectedState, this.showInfo = false});

  SelectionState copyWith({String? selectedState, bool? showInfo}) {
    return SelectionState(
      selectedState: selectedState ?? this.selectedState,
      showInfo: showInfo ?? this.showInfo,
    );
  }
}

class SelectionNotifier extends StateNotifier<SelectionState> {
  SelectionNotifier() : super(SelectionState());

  void select(String stateName) {
    state = SelectionState(selectedState: stateName, showInfo: true);
  }

  void clear() {
    state = SelectionState(selectedState: null, showInfo: false);
  }
}

final selectionProvider =
    StateNotifierProvider<SelectionNotifier, SelectionState>((ref) {
      return SelectionNotifier();
    });
