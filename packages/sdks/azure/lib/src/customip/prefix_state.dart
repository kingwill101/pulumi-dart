// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Prefix resources.
class PrefixState {
  /// The `cidr` of the Custom IP Prefix, either IPv4 or IPv6. Changing this forces a new resource to be created.
  final pulumi.Input<String>? cidr;
  /// Specifies that the custom IP prefix should be commissioned after provisioning in Azure. Defaults to `false`.
  ///
  /// !> **Note:** Changing the value of `commissioning_enabled` from `true` to `false` causes the IP prefix to stop being advertised by Azure and is functionally equivalent to deleting it when used in a production setting.
  final pulumi.Input<bool>? commissioningEnabled;
  /// Specifies that the custom IP prefix should not be publicly advertised on the Internet when commissioned (regional commissioning feature). Defaults to `false`.
  ///
  /// !> **Note:** Changing the value of `internet_advertising_disabled` from `true` to `false` causes the IP prefix to stop being advertised by Azure and is functionally equivalent to deleting it when used in a production setting.
  final pulumi.Input<bool>? internetAdvertisingDisabled;
  /// The location where the Custom IP Prefix should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Custom IP Prefix. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the parent prefix. Only needed when creating a regional/child IPv6 prefix. Changing this forces a new resource to be created.
  final pulumi.Input<String>? parentCustomIpPrefixId;
  /// The name of the Resource Group in which to create the Custom IP Prefix. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The expiration date of the Route Origin Authorization (ROA) document which has been filed with the Routing Internet Registry (RIR) for this prefix. The expected format is `YYYY-MM-DD`. Required when provisioning an IPv4 prefix or IPv6 global prefix. Changing this forces a new resource to be created.
  final pulumi.Input<String>? roaValidityEndDate;
  /// A mapping of tags to assign to the Custom IP Prefix.
  final pulumi.Input<Map<String, String>>? tags;
  /// The signed base64-encoded authorization message, which will be sent to Microsoft for WAN verification. Required when provisioning an IPv4 prefix or IPv6 global prefix. Refer to [Azure documentation](https://learn.microsoft.com/en-us/azure/virtual-network/ip-services/create-custom-ip-address-prefix-cli#certificate-readiness) for more details about the process for your RIR. Changing this forces a new resource to be created.
  final pulumi.Input<String>? wanValidationSignedMessage;
  /// Specifies a list of Availability Zones in which this Custom IP Prefix should be located. Should not be specified when creating an IPv6 global prefix. Changing this forces a new resource to be created.
  ///
  /// > **Note:** In regions with [availability zones](https://docs.microsoft.com/en-us/azure/availability-zones/az-overview), the Custom IP Prefix must be specified as either `Zone-redundant` or assigned to a specific zone. It can't be created with no zone specified in these regions. All IPs from the prefix must have the same zonal properties.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [PrefixState].
  /// [cidr] The `cidr` of the Custom IP Prefix, either IPv4 or IPv6. Changing this forces a new resource to be created.
  /// [commissioningEnabled] Specifies that the custom IP prefix should be commissioned after provisioning in Azure. Defaults to `false`.
  /// [internetAdvertisingDisabled] Specifies that the custom IP prefix should not be publicly advertised on the Internet when commissioned (regional commissioning feature). Defaults to `false`.
  /// [location] The location where the Custom IP Prefix should exist. Changing this forces a new resource to be created.
  /// [name] The name of the Custom IP Prefix. Changing this forces a new resource to be created.
  /// [parentCustomIpPrefixId] Specifies the ID of the parent prefix. Only needed when creating a regional/child IPv6 prefix. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which to create the Custom IP Prefix. Changing this forces a new resource to be created.
  /// [roaValidityEndDate] The expiration date of the Route Origin Authorization (ROA) document which has been filed with the Routing Internet Registry (RIR) for this prefix. The expected format is `YYYY-MM-DD`. Required when provisioning an IPv4 prefix or IPv6 global prefix. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Custom IP Prefix.
  /// [wanValidationSignedMessage] The signed base64-encoded authorization message, which will be sent to Microsoft for WAN verification. Required when provisioning an IPv4 prefix or IPv6 global prefix. Refer to [Azure documentation](https://learn.microsoft.com/en-us/azure/virtual-network/ip-services/create-custom-ip-address-prefix-cli#certificate-readiness) for more details about the process for your RIR. Changing this forces a new resource to be created.
  /// [zones] Specifies a list of Availability Zones in which this Custom IP Prefix should be located. Should not be specified when creating an IPv6 global prefix. Changing this forces a new resource to be created.
  PrefixState({
    pulumi.Output<String>? cidr,
    pulumi.Output<bool>? commissioningEnabled,
    pulumi.Output<bool>? internetAdvertisingDisabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parentCustomIpPrefixId,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? roaValidityEndDate,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? wanValidationSignedMessage,
    pulumi.Output<List<String>>? zones,
  }) :
      cidr = pulumi.Input.asOptionalInput<String>(cidr),
      commissioningEnabled = pulumi.Input.asOptionalInput<bool>(commissioningEnabled),
      internetAdvertisingDisabled = pulumi.Input.asOptionalInput<bool>(internetAdvertisingDisabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentCustomIpPrefixId = pulumi.Input.asOptionalInput<String>(parentCustomIpPrefixId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      roaValidityEndDate = pulumi.Input.asOptionalInput<String>(roaValidityEndDate),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      wanValidationSignedMessage = pulumi.Input.asOptionalInput<String>(wanValidationSignedMessage),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'commissioningEnabled': ?commissioningEnabled,
      'internetAdvertisingDisabled': ?internetAdvertisingDisabled,
      'location': ?location,
      'name': ?name,
      'parentCustomIpPrefixId': ?parentCustomIpPrefixId,
      'resourceGroupName': ?resourceGroupName,
      'roaValidityEndDate': ?roaValidityEndDate,
      'tags': ?tags,
      'wanValidationSignedMessage': ?wanValidationSignedMessage,
      'zones': ?zones,
    };
  }

  factory PrefixState.fromMap(Map<String, dynamic> map) {
    return PrefixState(
      cidr: map['cidr'] == null ? null : pulumi.Output.create<String>(map['cidr'] as String),
      commissioningEnabled: map['commissioningEnabled'] == null ? null : pulumi.Output.create<bool>(map['commissioningEnabled'] as bool),
      internetAdvertisingDisabled: map['internetAdvertisingDisabled'] == null ? null : pulumi.Output.create<bool>(map['internetAdvertisingDisabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentCustomIpPrefixId: map['parentCustomIpPrefixId'] == null ? null : pulumi.Output.create<String>(map['parentCustomIpPrefixId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      roaValidityEndDate: map['roaValidityEndDate'] == null ? null : pulumi.Output.create<String>(map['roaValidityEndDate'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      wanValidationSignedMessage: map['wanValidationSignedMessage'] == null ? null : pulumi.Output.create<String>(map['wanValidationSignedMessage'] as String),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

