sealed class NumberEvent {}

final class NumberIncrement extends NumberEvent {
  final int bath;
  NumberIncrement({required this.bath});
}

final class NumberDeIncrement extends NumberEvent {}
