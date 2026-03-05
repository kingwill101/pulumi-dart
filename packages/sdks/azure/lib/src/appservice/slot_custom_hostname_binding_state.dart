// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SlotCustomHostnameBinding resources.
class SlotCustomHostnameBindingState {
  /// The ID of the App Service Slot. Changing this forces a new resource to be created.
  final pulumi.Input<String>? appServiceSlotId;
  /// Specifies the Custom Hostname to use for the App Service, example `www.example.com`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** A CNAME needs to be configured from this Hostname to the Azure Website - otherwise Azure will reject the Hostname Binding.
  final pulumi.Input<String>? hostname;
  /// The SSL type. Possible values are `IpBasedEnabled` and `SniEnabled`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sslState;
  /// The SSL certificate thumbprint. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `thumbprint` must be specified when `ssl_state` is set.
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
    this.appServiceSlotId,
    this.hostname,
    this.sslState,
    this.thumbprint,
    this.virtualIp,
  });

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
      appServiceSlotId: (() { final guardedValue = map['appServiceSlotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslState: (() { final guardedValue = map['sslState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualIp: (() { final guardedValue = map['virtualIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

