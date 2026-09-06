// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'command.dart';

/// The definition of a Test.
class Test {
  /// The commands used in the test.
  final pulumi.Input<List<Command>> commands;
  /// Indicates if this test is active.It doesn't schedule test for not active Test.
  final pulumi.Input<bool?>? isActive;
  /// The type of the test.
  final pulumi.Input<dynamic> testType;

  /// Creates a new [Test].
  /// [commands] The commands used in the test.
  /// [isActive] Indicates if this test is active.It doesn't schedule test for not active Test.
  /// [testType] The type of the test.
  const Test({
    required this.commands,
    this.isActive,
    required this.testType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': pulumi.Input.mapInputValue<List<Command>, List<Map<String, dynamic>>>(commands, (value) => pulumi.Input.encodeList<Command, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isActive': ?isActive,
      'testType': testType,
    };
  }

  factory Test.fromMap(Map<String, dynamic> map) {
    return Test(
      commands: pulumi.Input.fromValue(pulumi.Input.decodeList<Command>(map['commands']!, (value) => Command.fromMap((value as Map).cast<String, dynamic>()))),
      isActive: (() { final guardedValue = map['isActive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      testType: pulumi.Input.fromValue(map['testType']),
    );
  }
}
