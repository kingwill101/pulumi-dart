// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_custom_hostname_binding_custom_hostname_binding_args_doc}
/// The set of arguments for CustomHostnameBinding.
/// {@endtemplate}
/// {@macro pulumi_appservice_custom_hostname_binding_custom_hostname_binding_args_doc}
class CustomHostnameBindingArgs {
  /// The name of the App Service in which to add the Custom Hostname Binding. Changing this forces a new resource to be created.
  final pulumi.Input<String> appServiceName;
  /// Specifies the Custom Hostname to use for the App Service, example `www.example.com`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** A CNAME needs to be configured from this Hostname to the Azure Website - otherwise Azure will reject the Hostname Binding.
  final pulumi.Input<String> hostname;
  /// The name of the resource group in which the App Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The SSL type. Possible values are `IpBasedEnabled` and `SniEnabled`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sslState;
  /// The SSL certificate thumbprint. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `thumbprint` must be specified when `ssl_state` is set.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [CustomHostnameBindingArgs].
  /// [appServiceName] The name of the App Service in which to add the Custom Hostname Binding. Changing this forces a new resource to be created.
  /// [hostname] Specifies the Custom Hostname to use for the App Service, example `www.example.com`. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the App Service exists. Changing this forces a new resource to be created.
  /// [sslState] The SSL type. Possible values are `IpBasedEnabled` and `SniEnabled`. Changing this forces a new resource to be created.
  /// [thumbprint] The SSL certificate thumbprint. Changing this forces a new resource to be created.
  const CustomHostnameBindingArgs({
    required this.appServiceName,
    required this.hostname,
    required this.resourceGroupName,
    this.sslState,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceName': appServiceName,
      'hostname': hostname,
      'resourceGroupName': resourceGroupName,
      'sslState': ?sslState,
      'thumbprint': ?thumbprint,
    };
  }

  factory CustomHostnameBindingArgs.fromMap(Map<String, dynamic> map) {
    return CustomHostnameBindingArgs(
      appServiceName: pulumi.Input.fromValue(map['appServiceName'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sslState: (() { final guardedValue = map['sslState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

