// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerScriptNamedHandler {
  /// The names of handlers exported as part of the named export.
  final pulumi.Input<List<String>?>? handlers;
  /// The name of the export.
  final pulumi.Input<String?>? name;

  /// Creates a new [WorkerScriptNamedHandler].
  /// [handlers] The names of handlers exported as part of the named export.
  /// [name] The name of the export.
  const WorkerScriptNamedHandler({
    this.handlers,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'handlers': ?handlers,
      'name': ?name,
    };
  }

  factory WorkerScriptNamedHandler.fromMap(Map<String, dynamic> map) {
    return WorkerScriptNamedHandler(
      handlers: (() { final guardedValue = map['handlers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
