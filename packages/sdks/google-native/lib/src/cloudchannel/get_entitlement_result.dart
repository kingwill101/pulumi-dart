// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_association_info_response.dart';
import 'google_cloud_channel_v1_commitment_settings_response.dart';
import 'google_cloud_channel_v1_parameter_response.dart';
import 'google_cloud_channel_v1_provisioned_service_response.dart';
import 'google_cloud_channel_v1_trial_settings_response.dart';

/// Result data returned by getEntitlement.
class GetEntitlementResult {
  /// Association information to other entitlements.
  final GoogleCloudChannelV1AssociationInfoResponse? associationInfo;
  /// Optional. The billing account resource name that is used to pay for this entitlement.
  final String? billingAccount;
  /// Commitment settings for a commitment-based Offer. Required for commitment based offers.
  final GoogleCloudChannelV1CommitmentSettingsResponse? commitmentSettings;
  /// The time at which the entitlement is created.
  final String? createTime;
  /// Resource name of an entitlement in the form: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}.
  final String? name;
  /// The offer resource name for which the entitlement is to be created. Takes the form: accounts/{account_id}/offers/{offer_id}.
  final String? offer;
  /// Extended entitlement parameters. When creating an entitlement, valid parameter names and values are defined in the Offer.parameter_definitions. For Google Workspace, the following Parameters may be accepted as input: - max_units: The maximum assignable units for a flexible offer OR - num_units: The total commitment for commitment-based offers The response may additionally include the following output-only Parameters: - assigned_units: The number of licenses assigned to users. For Google Cloud billing subaccounts, the following Parameter may be accepted as input: - display_name: The display name of the billing subaccount.
  final List<GoogleCloudChannelV1ParameterResponse>? parameters;
  /// Service provisioning details for the entitlement.
  final GoogleCloudChannelV1ProvisionedServiceResponse? provisionedService;
  /// Current provisioning state of the entitlement.
  final String? provisioningState;
  /// Optional. This purchase order (PO) information is for resellers to use for their company tracking usage. If a purchaseOrderId value is given, it appears in the API responses and shows up in the invoice. The property accepts up to 80 plain text characters. This is only supported for Google Workspace entitlements.
  final String? purchaseOrderId;
  /// Enumerable of all current suspension reasons for an entitlement.
  final List<String>? suspensionReasons;
  /// Settings for trial offers.
  final GoogleCloudChannelV1TrialSettingsResponse? trialSettings;
  /// The time at which the entitlement is updated.
  final String? updateTime;

  /// Creates a new [GetEntitlementResult].
  /// [associationInfo] Association information to other entitlements.
  /// [billingAccount] Optional. The billing account resource name that is used to pay for this entitlement.
  /// [commitmentSettings] Commitment settings for a commitment-based Offer. Required for commitment based offers.
  /// [createTime] The time at which the entitlement is created.
  /// [name] Resource name of an entitlement in the form: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}.
  /// [offer] The offer resource name for which the entitlement is to be created. Takes the form: accounts/{account_id}/offers/{offer_id}.
  /// [parameters] Extended entitlement parameters. When creating an entitlement, valid parameter names and values are defined in the Offer.parameter_definitions. For Google Workspace, the following Parameters may be accepted as input: - max_units: The maximum assignable units for a flexible offer OR - num_units: The total commitment for commitment-based offers The response may additionally include the following output-only Parameters: - assigned_units: The number of licenses assigned to users. For Google Cloud billing subaccounts, the following Parameter may be accepted as input: - display_name: The display name of the billing subaccount.
  /// [provisionedService] Service provisioning details for the entitlement.
  /// [provisioningState] Current provisioning state of the entitlement.
  /// [purchaseOrderId] Optional. This purchase order (PO) information is for resellers to use for their company tracking usage. If a purchaseOrderId value is given, it appears in the API responses and shows up in the invoice. The property accepts up to 80 plain text characters. This is only supported for Google Workspace entitlements.
  /// [suspensionReasons] Enumerable of all current suspension reasons for an entitlement.
  /// [trialSettings] Settings for trial offers.
  /// [updateTime] The time at which the entitlement is updated.
  const GetEntitlementResult({
    this.associationInfo,
    this.billingAccount,
    this.commitmentSettings,
    this.createTime,
    this.name,
    this.offer,
    this.parameters,
    this.provisionedService,
    this.provisioningState,
    this.purchaseOrderId,
    this.suspensionReasons,
    this.trialSettings,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationInfo': ?associationInfo?.toMap(),
      'billingAccount': ?billingAccount,
      'commitmentSettings': ?commitmentSettings?.toMap(),
      'createTime': ?createTime,
      'name': ?name,
      'offer': ?offer,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudChannelV1ParameterResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisionedService': ?provisionedService?.toMap(),
      'provisioningState': ?provisioningState,
      'purchaseOrderId': ?purchaseOrderId,
      'suspensionReasons': ?suspensionReasons,
      'trialSettings': ?trialSettings?.toMap(),
      'updateTime': ?updateTime,
    };
  }

  factory GetEntitlementResult.fromMap(Map<String, dynamic> map) {
    return GetEntitlementResult(
      associationInfo: (() { final guardedValue = map['associationInfo']; if (guardedValue == null) return null; return GoogleCloudChannelV1AssociationInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      billingAccount: (() { final guardedValue = map['billingAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      commitmentSettings: (() { final guardedValue = map['commitmentSettings']; if (guardedValue == null) return null; return GoogleCloudChannelV1CommitmentSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offer: (() { final guardedValue = map['offer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudChannelV1ParameterResponse>(guardedValue, (value) => GoogleCloudChannelV1ParameterResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisionedService: (() { final guardedValue = map['provisionedService']; if (guardedValue == null) return null; return GoogleCloudChannelV1ProvisionedServiceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      purchaseOrderId: (() { final guardedValue = map['purchaseOrderId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      suspensionReasons: (() { final guardedValue = map['suspensionReasons']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      trialSettings: (() { final guardedValue = map['trialSettings']; if (guardedValue == null) return null; return GoogleCloudChannelV1TrialSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
