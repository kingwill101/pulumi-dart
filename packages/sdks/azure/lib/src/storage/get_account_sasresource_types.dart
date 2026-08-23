// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountSASResourceTypes {
  /// Should permission be granted to the container?
  final pulumi.Input<bool> container;
  /// Should permission be granted only to a specific object?
  final pulumi.Input<bool> object_;
  /// Should permission be granted to the entire service?
  final pulumi.Input<bool> service;

  /// Creates a new [GetAccountSASResourceTypes].
  /// [container] Should permission be granted to the container?
  /// [object_] Should permission be granted only to a specific object?
  /// [service] Should permission be granted to the entire service?
  const GetAccountSASResourceTypes({
    required this.container,
    required this.object_,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': container,
      'object': object_,
      'service': service,
    };
  }

  factory GetAccountSASResourceTypes.fromMap(Map<String, dynamic> map) {
    return GetAccountSASResourceTypes(
      container: pulumi.Input.fromValue(map['container'] as bool),
      object_: pulumi.Input.fromValue(map['object'] as bool),
      service: pulumi.Input.fromValue(map['service'] as bool),
    );
  }
}
