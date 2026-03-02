// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomProviderAction {
  /// Specifies the endpoint of the action.
  final pulumi.Input<String> endpoint;
  /// Specifies the name of the action.
  final pulumi.Input<String> name;

  /// Creates a new [CustomProviderAction].
  /// [endpoint] Specifies the endpoint of the action.
  /// [name] Specifies the name of the action.
  CustomProviderAction({
    required this.endpoint,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'name': name,
    };
  }

  factory CustomProviderAction.fromMap(Map<String, dynamic> map) {
    return CustomProviderAction(
      endpoint: (map['endpoint'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

