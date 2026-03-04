// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_traffic_manager_get_traffic_manager_args_doc}
/// Arguments for getTrafficManager.
/// {@endtemplate}
/// {@macro pulumi_network_get_traffic_manager_get_traffic_manager_args_doc}
class GetTrafficManagerArgs {
  /// Specifies the name of the Location, for example `World`, `Europe` or `Germany`.
  final pulumi.Input<String> name;

  /// Creates a new [GetTrafficManagerArgs].
  /// [name] Specifies the name of the Location, for example `World`, `Europe` or `Germany`.
  GetTrafficManagerArgs({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory GetTrafficManagerArgs.fromMap(Map<String, dynamic> map) {
    return GetTrafficManagerArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
