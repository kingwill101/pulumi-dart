// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DomainTopic resources.
class DomainTopicState {
  /// Specifies the name of the EventGrid Domain. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? domainName;
  /// Specifies the name of the EventGrid Domain Topic resource. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of the resource group in which the EventGrid Domain exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;

  /// Creates a new [DomainTopicState].
  /// [domainName] Specifies the name of the EventGrid Domain. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the EventGrid Domain Topic resource. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the EventGrid Domain exists. Changing this forces a new resource to be created.
  const DomainTopicState({
    this.domainName,
    this.name,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory DomainTopicState.fromMap(Map<String, dynamic> map) {
    return DomainTopicState(
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
