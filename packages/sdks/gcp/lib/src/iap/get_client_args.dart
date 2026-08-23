// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_get_client_get_client_args_doc}
/// Arguments for getClient.
/// {@endtemplate}
/// {@macro pulumi_iap_get_client_get_client_args_doc}
class GetClientArgs {
  /// Identifier of the brand to which this client
  /// is attached to. The format is
  /// `projects/{project_number}/brands/{brand_id}`.
  final pulumi.Input<String> brand;
  /// Output only. Unique identifier of the OAuth client.
  final pulumi.Input<String> clientId;

  /// Creates a new [GetClientArgs].
  /// [brand] Identifier of the brand to which this client
  /// [clientId] Output only. Unique identifier of the OAuth client.
  const GetClientArgs({
    required this.brand,
    required this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brand': brand,
      'clientId': clientId,
    };
  }

  factory GetClientArgs.fromMap(Map<String, dynamic> map) {
    return GetClientArgs(
      brand: pulumi.Input.fromValue(map['brand'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
    );
  }
}
