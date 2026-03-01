// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SlotCustomHostnameBinding resources.
class SlotCustomHostnameBindingState {
  /// The ID of the App Service Slot. Changing this forces a new resource to be created.
  final pulumi.Input<String>? appServiceSlotId;
  /// Specifies the Custom Hostname to use for the App Service, example `www.example.com`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** A CNAME needs to be configured from this Hostname to the Azure Website - otherwise Azure will reject the Hostname Binding.
  final pulumi.Input<String>? hostname;
  /// The SSL type. Possible values are `IpBasedEnabled` and `SniEnabled`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sslState;
  /// The SSL certificate thumbprint. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `thumbprint` must be specified when `ssl_state` is set.
  final pulumi.Input<String>? thumbprint;
  /// The virtual IP address assigned to the hostname if IP based SSL is enabled.
  final pulumi.Input<String>? virtualIp;

  /// Creates a new [SlotCustomHostnameBindingState].
  /// [appServiceSlotId] The ID of the App Service Slot. Changing this forces a new resource to be created.
  /// [hostname] Specifies the Custom Hostname to use for the App Service, example `www.example.com`. Changing this forces a new resource to be created.
  /// [sslState] The SSL type. Possible values are `IpBasedEnabled` and `SniEnabled`. Changing this forces a new resource to be created.
  /// [thumbprint] The SSL certificate thumbprint. Changing this forces a new resource to be created.
  /// [virtualIp] The virtual IP address assigned to the hostname if IP based SSL is enabled.
  SlotCustomHostnameBindingState({
    pulumi.Output<String>? appServiceSlotId,
    pulumi.Output<String>? hostname,
    pulumi.Output<String>? sslState,
    pulumi.Output<String>? thumbprint,
    pulumi.Output<String>? virtualIp,
  }) :
      appServiceSlotId = pulumi.Input.asOptionalInput<String>(appServiceSlotId),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      sslState = pulumi.Input.asOptionalInput<String>(sslState),
      thumbprint = pulumi.Input.asOptionalInput<String>(thumbprint),
      virtualIp = pulumi.Input.asOptionalInput<String>(virtualIp);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceSlotId': ?appServiceSlotId,
      'hostname': ?hostname,
      'sslState': ?sslState,
      'thumbprint': ?thumbprint,
      'virtualIp': ?virtualIp,
    };
  }

  factory SlotCustomHostnameBindingState.fromMap(Map<String, dynamic> map) {
    return SlotCustomHostnameBindingState(
      appServiceSlotId: map['appServiceSlotId'] == null ? null : pulumi.Output.create<String>(map['appServiceSlotId'] as String),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      sslState: map['sslState'] == null ? null : pulumi.Output.create<String>(map['sslState'] as String),
      thumbprint: map['thumbprint'] == null ? null : pulumi.Output.create<String>(map['thumbprint'] as String),
      virtualIp: map['virtualIp'] == null ? null : pulumi.Output.create<String>(map['virtualIp'] as String),
    );
  }
}

