// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A single automation scope.
class AutomationScope {
  /// The resources scope description.
  final pulumi.Input<String>? description;
  /// The resources scope path. Can be the subscription on which the automation is defined on or a resource group under that subscription (fully qualified Azure resource IDs).
  final pulumi.Input<String>? scopePath;

  /// Creates a new [AutomationScope].
  /// [description] The resources scope description.
  /// [scopePath] The resources scope path. Can be the subscription on which the automation is defined on or a resource group under that subscription (fully qualified Azure resource IDs).
  AutomationScope({
    this.description,
    this.scopePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'scopePath': ?scopePath,
    };
  }

  factory AutomationScope.fromMap(Map<String, dynamic> map) {
    return AutomationScope(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopePath: (() { final guardedValue = map['scopePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

