// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomHostnameBinding resources.
class CustomHostnameBindingState {
  /// The name of the App Service in which to add the Custom Hostname Binding. Changing this forces a new resource to be created.
  final pulumi.Input<String>? appServiceName;
  /// Specifies the Custom Hostname to use for the App Service, example `www.example.com`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** A CNAME needs to be configured from this Hostname to the Azure Website - otherwise Azure will reject the Hostname Binding.
  final pulumi.Input<String>? hostname;
  /// The name of the resource group in which the App Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The SSL type. Possible values are `IpBasedEnabled` and `SniEnabled`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sslState;
  /// The SSL certificate thumbprint. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `thumbprint` must be specified when `ssl_state` is set.
  final pulumi.Input<String>? thumbprint;
  /// The virtual IP address assigned to the hostname if IP based SSL is enabled.
  final pulumi.Input<String>? virtualIp;

  /// Creates a new [CustomHostnameBindingState].
  /// [appServiceName] The name of the App Service in which to add the Custom Hostname Binding. Changing this forces a new resource to be created.
  /// [hostname] Specifies the Custom Hostname to use for the App Service, example `www.example.com`. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the App Service exists. Changing this forces a new resource to be created.
  /// [sslState] The SSL type. Possible values are `IpBasedEnabled` and `SniEnabled`. Changing this forces a new resource to be created.
  /// [thumbprint] The SSL certificate thumbprint. Changing this forces a new resource to be created.
  /// [virtualIp] The virtual IP address assigned to the hostname if IP based SSL is enabled.
  CustomHostnameBindingState({
    this.appServiceName,
    this.hostname,
    this.resourceGroupName,
    this.sslState,
    this.thumbprint,
    this.virtualIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceName': ?appServiceName,
      'hostname': ?hostname,
      'resourceGroupName': ?resourceGroupName,
      'sslState': ?sslState,
      'thumbprint': ?thumbprint,
      'virtualIp': ?virtualIp,
    };
  }

  factory CustomHostnameBindingState.fromMap(Map<String, dynamic> map) {
    return CustomHostnameBindingState(
      appServiceName: map['appServiceName'] == null ? null : (map['appServiceName'] as String).input(),
      hostname: map['hostname'] == null ? null : (map['hostname'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      sslState: map['sslState'] == null ? null : (map['sslState'] as String).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint'] as String).input(),
      virtualIp: map['virtualIp'] == null ? null : (map['virtualIp'] as String).input(),
    );
  }
}

