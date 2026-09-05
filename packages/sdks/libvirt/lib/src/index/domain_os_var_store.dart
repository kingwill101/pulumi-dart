// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsVarStore {
  final pulumi.Input<String?>? path;
  final pulumi.Input<String?>? template;

  /// Creates a new [DomainOsVarStore].
  /// [path] Optional.
  /// [template] Optional.
  const DomainOsVarStore({
    this.path,
    this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'template': ?template,
    };
  }

  factory DomainOsVarStore.fromMap(Map<String, dynamic> map) {
    return DomainOsVarStore(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
