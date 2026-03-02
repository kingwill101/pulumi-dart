// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountSASResourceTypes {
  /// Should permission be granted to the container?
  final pulumi.Input<bool> container;
  /// Should permission be granted only to a specific object?
  final pulumi.Input<bool> object;
  /// Should permission be granted to the entire service?
  final pulumi.Input<bool> service;

  /// Creates a new [GetAccountSASResourceTypes].
  /// [container] Should permission be granted to the container?
  /// [object] Should permission be granted only to a specific object?
  /// [service] Should permission be granted to the entire service?
  GetAccountSASResourceTypes({
    required this.container,
    required this.object,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': container,
      'object': object,
      'service': service,
    };
  }

  factory GetAccountSASResourceTypes.fromMap(Map<String, dynamic> map) {
    return GetAccountSASResourceTypes(
      container: (map['container'] as bool).input(),
      object: (map['object'] as bool).input(),
      service: (map['service'] as bool).input(),
    );
  }
}

