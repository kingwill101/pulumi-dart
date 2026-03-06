// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_association_info.dart';
import 'google_cloud_channel_v1_commitment_settings.dart';
import 'google_cloud_channel_v1_parameter.dart';

/// {@template pulumi_cloudchannel_v1_entitlement_args_doc}
/// The set of arguments for Entitlement.
/// {@endtemplate}
/// {@macro pulumi_cloudchannel_v1_entitlement_args_doc}
class EntitlementArgs {
  final pulumi.Input<String> accountId;
  /// Association information to other entitlements.
  final pulumi.Input<GoogleCloudChannelV1AssociationInfo>? associationInfo;
  /// Optional. The billing account resource name that is used to pay for this entitlement.
  final pulumi.Input<String>? billingAccount;
  /// Commitment settings for a commitment-based Offer. Required for commitment based offers.
  final pulumi.Input<GoogleCloudChannelV1CommitmentSettings>? commitmentSettings;
  final pulumi.Input<String> customerId;
  /// The offer resource name for which the entitlement is to be created. Takes the form: accounts/{account_id}/offers/{offer_id}.
  final pulumi.Input<String> offer;
  /// Extended entitlement parameters. When creating an entitlement, valid parameter names and values are defined in the Offer.parameter_definitions. For Google Workspace, the following Parameters may be accepted as input: - max_units: The maximum assignable units for a flexible offer OR - num_units: The total commitment for commitment-based offers The response may additionally include the following output-only Parameters: - assigned_units: The number of licenses assigned to users. For Google Cloud billing subaccounts, the following Parameter may be accepted as input: - display_name: The display name of the billing subaccount.
  final pulumi.Input<List<GoogleCloudChannelV1Parameter>>? parameters;
  /// Optional. This purchase order (PO) information is for resellers to use for their company tracking usage. If a purchaseOrderId value is given, it appears in the API responses and shows up in the invoice. The property accepts up to 80 plain text characters. This is only supported for Google Workspace entitlements.
  final pulumi.Input<String>? purchaseOrderId;
  /// Optional. You can specify an optional unique request ID, and if you need to retry your request, the server will know to ignore the request if it's complete. For example, you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if it received the original operation with the same request ID. If it did, it will ignore the second request. The request ID must be a valid [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero UUID is not supported (`00000000-0000-0000-0000-000000000000`).
  final pulumi.Input<String>? requestId;

  /// Creates a new [EntitlementArgs].
  /// [accountId] Required.
  /// [associationInfo] Association information to other entitlements.
  /// [billingAccount] Optional. The billing account resource name that is used to pay for this entitlement.
  /// [commitmentSettings] Commitment settings for a commitment-based Offer. Required for commitment based offers.
  /// [customerId] Required.
  /// [offer] The offer resource name for which the entitlement is to be created. Takes the form: accounts/{account_id}/offers/{offer_id}.
  /// [parameters] Extended entitlement parameters. When creating an entitlement, valid parameter names and values are defined in the Offer.parameter_definitions. For Google Workspace, the following Parameters may be accepted as input: - max_units: The maximum assignable units for a flexible offer OR - num_units: The total commitment for commitment-based offers The response may additionally include the following output-only Parameters: - assigned_units: The number of licenses assigned to users. For Google Cloud billing subaccounts, the following Parameter may be accepted as input: - display_name: The display name of the billing subaccount.
  /// [purchaseOrderId] Optional. This purchase order (PO) information is for resellers to use for their company tracking usage. If a purchaseOrderId value is given, it appears in the API responses and shows up in the invoice. The property accepts up to 80 plain text characters. This is only supported for Google Workspace entitlements.
  /// [requestId] Optional. You can specify an optional unique request ID, and if you need to retry your request, the server will know to ignore the request if it's complete. For example, you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if it received the original operation with the same request ID. If it did, it will ignore the second request. The request ID must be a valid [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero UUID is not supported (`00000000-0000-0000-0000-000000000000`).
  const EntitlementArgs({
    required this.accountId,
    this.associationInfo,
    this.billingAccount,
    this.commitmentSettings,
    required this.customerId,
    required this.offer,
    this.parameters,
    this.purchaseOrderId,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'associationInfo': ?pulumi.Input.mapOptionalInputValue<GoogleCloudChannelV1AssociationInfo, Map<String, dynamic>>(associationInfo, (value) => value.toMap()),
      'billingAccount': ?billingAccount,
      'commitmentSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudChannelV1CommitmentSettings, Map<String, dynamic>>(commitmentSettings, (value) => value.toMap()),
      'customerId': customerId,
      'offer': offer,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudChannelV1Parameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GoogleCloudChannelV1Parameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'purchaseOrderId': ?purchaseOrderId,
      'requestId': ?requestId,
    };
  }

  factory EntitlementArgs.fromMap(Map<String, dynamic> map) {
    return EntitlementArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      associationInfo: (() { final guardedValue = map['associationInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudChannelV1AssociationInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      billingAccount: (() { final guardedValue = map['billingAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commitmentSettings: (() { final guardedValue = map['commitmentSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudChannelV1CommitmentSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customerId: pulumi.Input.fromValue(map['customerId'] as String),
      offer: pulumi.Input.fromValue(map['offer'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudChannelV1Parameter>(guardedValue, (value) => GoogleCloudChannelV1Parameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      purchaseOrderId: (() { final guardedValue = map['purchaseOrderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

