// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_resource_library_application_get_zero_trust_resource_library_application_args_doc}
/// Arguments for getZeroTrustResourceLibraryApplication.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_resource_library_application_get_zero_trust_resource_library_application_args_doc}
class GetZeroTrustResourceLibraryApplicationArgs {
  final pulumi.Input<String> accountId;
  /// The ID of this resource.
  final pulumi.Input<int> id;

  /// Creates a new [GetZeroTrustResourceLibraryApplicationArgs].
  /// [accountId] Required.
  /// [id] The ID of this resource.
  const GetZeroTrustResourceLibraryApplicationArgs({
    required this.accountId,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'id': id,
    };
  }

  factory GetZeroTrustResourceLibraryApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustResourceLibraryApplicationArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      id: pulumi.Input.fromValue((map['id'] as num).toInt()),
    );
  }
}
