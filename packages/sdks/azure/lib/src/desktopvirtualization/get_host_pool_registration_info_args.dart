// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_get_host_pool_registration_info_get_host_pool_registration_info_args_doc}
/// The set of arguments for GetHostPoolRegistrationInfo.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_get_host_pool_registration_info_get_host_pool_registration_info_args_doc}
class GetHostPoolRegistrationInfoArgs {
  /// A valid `RFC3339Time` for the expiration of the token..
  final pulumi.Input<String> expirationDate;

  /// The ID of the Virtual Desktop Host Pool to link the Registration Info to. Changing this forces a new Registration Info resource to be created. Only a single virtual_desktop_host_pool_registration_info resource should be associated with a given hostpool. Assigning multiple resources will produce inconsistent results.
  final pulumi.Input<String> hostpoolId;

  /// Creates a new [GetHostPoolRegistrationInfoArgs].
  /// [expirationDate] A valid `RFC3339Time` for the expiration of the token..
  /// [hostpoolId] The ID of the Virtual Desktop Host Pool to link the Registration Info to. Changing this forces a new Registration Info resource to be created. Only a single virtual_desktop_host_pool_registration_info resource should be associated with a given hostpool. Assigning multiple resources will produce inconsistent results.
  GetHostPoolRegistrationInfoArgs({
    required this.expirationDate,
    required this.hostpoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationDate': expirationDate,
      'hostpoolId': hostpoolId,
    };
  }

  factory GetHostPoolRegistrationInfoArgs.fromMap(Map<String, dynamic> map) {
    return GetHostPoolRegistrationInfoArgs(
      expirationDate: pulumi.Input.fromValue(map['expirationDate'] as String),
      hostpoolId: pulumi.Input.fromValue(map['hostpoolId'] as String),
    );
  }
}
