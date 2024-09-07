import 'package:pulumi_dart/src/input_args.dart';

abstract class ResourceArgs extends InputArgs {
  static final ResourceArgs empty = EmptyResourceArgs();

  @override
  Map<String, InputInfo> get inputInfos => {};

  @override
  void validateMember(Type memberType, String fullName) {
    // No validation. A member may or may not be IInput.
  }
}

class EmptyResourceArgs extends ResourceArgs {}
