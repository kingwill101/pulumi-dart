// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_windowsiot_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_windowsiot_service_args_doc}
class ServiceArgs {
  /// Windows IoT Device Service OEM AAD domain
  final pulumi.Input<String>? adminDomainName;

  /// Windows IoT Device Service ODM AAD domain
  final pulumi.Input<String>? billingDomainName;

  /// The name of the Windows IoT Device Service.
  final pulumi.Input<String>? deviceName;

  /// The Azure Region where the resource lives
  final pulumi.Input<String>? location;

  /// Windows IoT Device Service notes.
  final pulumi.Input<String>? notes;

  /// Windows IoT Device Service device allocation,
  final pulumi.Input<double>? quantity;

  /// The name of the resource group that contains the Windows IoT Device Service.
  final pulumi.Input<String> resourceGroupName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceArgs].
  /// [adminDomainName] Windows IoT Device Service OEM AAD domain
  /// [billingDomainName] Windows IoT Device Service ODM AAD domain
  /// [deviceName] The name of the Windows IoT Device Service.
  /// [location] The Azure Region where the resource lives
  /// [notes] Windows IoT Device Service notes.
  /// [quantity] Windows IoT Device Service device allocation,
  /// [resourceGroupName] The name of the resource group that contains the Windows IoT Device Service.
  /// [tags] Resource tags.
  ServiceArgs({
    this.adminDomainName,
    this.billingDomainName,
    this.deviceName,
    this.location,
    this.notes,
    this.quantity,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminDomainName': ?adminDomainName,
      'billingDomainName': ?billingDomainName,
      'deviceName': ?deviceName,
      'location': ?location,
      'notes': ?notes,
      'quantity': ?quantity,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      adminDomainName: (() {
        final guardedValue = map['adminDomainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      billingDomainName: (() {
        final guardedValue = map['billingDomainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deviceName: (() {
        final guardedValue = map['deviceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notes: (() {
        final guardedValue = map['notes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      quantity: (() {
        final guardedValue = map['quantity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
