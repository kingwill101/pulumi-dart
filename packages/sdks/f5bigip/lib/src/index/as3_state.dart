// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'as3_delete_apps.dart';

/// Input properties used for looking up and filtering As3 resources.
class As3State {
  /// List of applications currently deployed on the Big-Ip
  final pulumi.Input<String>? applicationList;
  /// Path/Filename of Declarative AS3 JSON which is a json file used with builtin ```file``` function
  final pulumi.Input<String>? as3Json;
  /// A map that allows you to configure specific behavior controls for the AS3 declaration. Each key represents a particular control setting, and the corresponding value defines its configuration.
  final pulumi.Input<Map<String, String>>? controls;
  /// Block for specifying tenant name and applications to delete from BIG-IP. **Mutually exclusive with `as3_json`**: only one of `delete_apps` or `as3_json` can be set in a resource block.
  final pulumi.Input<As3DeleteApps>? deleteApps;
  /// Set True if you want to ignore metadata changes during update. By default it is set to false
  ///
  /// * `as3_example1.json` - Example  AS3 Declarative JSON file with single tenant
  ///
  /// ```json
  ///
  /// {
  /// "class": "AS3",
  /// "action": "deploy",
  /// "persist": true,
  /// "declaration": {
  /// "class": "ADC",
  /// "schemaVersion": "3.0.0",
  /// "id": "example-declaration-01",
  /// "label": "Sample 1",
  /// "remark": "Simple HTTP application with round robin pool",
  /// "Sample_01": {
  /// "class": "Tenant",
  /// "defaultRouteDomain": 0,
  /// "Application_1": {
  /// "class": "Application",
  /// "template": "http",
  /// "serviceMain": {
  /// "class": "Service_HTTP",
  /// "virtualAddresses": [
  /// "10.0.2.10"
  /// ],
  /// "pool": "web_pool"
  /// },
  /// "web_pool": {
  /// "class": "Pool",
  /// "monitors": [
  /// "http"
  /// ],
  /// "members": [
  /// {
  /// "servicePort": 80,
  /// "serverAddresses": [
  /// "192.0.1.100",
  /// "192.0.1.110"
  /// ]
  /// }
  /// ]
  /// }
  /// }
  /// }
  /// }
  /// }
  ///
  /// ```
  /// * `as3_example2.json` - Example  AS3 Declarative JSON file with multiple tenants
  ///
  /// ```json
  ///
  /// {
  /// "class": "AS3",
  /// "action": "deploy",
  /// "persist": true,
  /// "declaration": {
  /// "class": "ADC",
  /// "schemaVersion": "3.0.0",
  /// "id": "example-declaration-01",
  /// "label": "Sample 1",
  /// "remark": "Simple HTTP application with round robin pool",
  /// "Sample_02": {
  /// "class": "Tenant",
  /// "defaultRouteDomain": 0,
  /// "Application_2": {
  /// "class": "Application",
  /// "template": "http",
  /// "serviceMain": {
  /// "class": "Service_HTTP",
  /// "virtualAddresses": [
  /// "10.2.2.10"
  /// ],
  /// "pool": "web_pool2"
  /// },
  /// "web_pool2": {
  /// "class": "Pool",
  /// "monitors": [
  /// "http"
  /// ],
  /// "members": [
  /// {
  /// "servicePort": 80,
  /// "serverAddresses": [
  /// "192.2.1.100",
  /// "192.2.1.110"
  /// ]
  /// }
  /// ]
  /// }
  /// }
  /// },
  /// "Sample_03": {
  /// "class": "Tenant",
  /// "defaultRouteDomain": 0,
  /// "Application_3": {
  /// "class": "Application",
  /// "template": "http",
  /// "serviceMain": {
  /// "class": "Service_HTTP",
  /// "virtualAddresses": [
  /// "10.1.2.10"
  /// ],
  /// "pool": "web_pool3"
  /// },
  /// "web_pool3": {
  /// "class": "Pool",
  /// "monitors": [
  /// "http"
  /// ],
  /// "members": [
  /// {
  /// "servicePort": 80,
  /// "serverAddresses": [
  /// "192.3.1.100",
  /// "192.3.1.110"
  /// ]
  /// }
  /// ]
  /// }
  /// }
  /// }
  /// }
  /// }
  ///
  /// ```
  ///
  /// * `perApplication_example` - Per Application Example - JSON file with multiple Applications (and no Tenant Details)
  ///
  /// ```json
  /// {
  /// "Application1": {
  /// "class": "Application",
  /// "service": {
  /// "class": "Service_HTTP",
  /// "virtualAddresses": [
  /// "192.0.2.1"
  /// ],
  /// "pool": "pool"
  /// },
  /// "pool": {
  /// "class": "Pool",
  /// "members": [
  /// {
  /// "servicePort": 80,
  /// "serverAddresses": [
  /// "192.0.2.10",
  /// "192.0.2.20"
  /// ]
  /// }
  /// ]
  /// }
  /// },
  /// "Application2": {
  /// "class": "Application",
  /// "service": {
  /// "class": "Service_HTTP",
  /// "virtualAddresses": [
  /// "192.0.3.2"
  /// ],
  /// "pool": "pool"
  /// },
  /// "pool": {
  /// "class": "Pool",
  /// "members": [
  /// {
  /// "servicePort": 80,
  /// "serverAddresses": [
  /// "192.0.3.30",
  /// "192.0.3.40"
  /// ]
  /// }
  /// ]
  /// }
  /// }
  /// }
  /// ```
  ///
  /// # f5bigip.As3 delete one or more applications
  ///
  /// The `f5bigip.As3` resource allows you to **post full AS3 declarations** or **selectively delete one or more applications** from a specific tenant in BIG-IP.
  ///
  /// &gt; **Note**: `delete_apps` and `as3_json` are **mutually exclusive**. You must use only one of them in a single `f5bigip.As3` resource block.
  final pulumi.Input<bool>? ignoreMetadata;
  /// Will specify whether is deployment is done via Per-Application Way or Traditional Way
  final pulumi.Input<bool>? perAppMode;
  /// ID of AS3 post declaration async task
  final pulumi.Input<String>? taskId;
  /// If there are multiple tenants on a BIG-IP, this attribute helps the user to set a particular tenant to which he want to reflect the changes. Other tenants will neither be created nor be modified.
  final pulumi.Input<String>? tenantFilter;
  /// List of tenants currently deployed on the Big-Ip
  final pulumi.Input<String>? tenantList;
  /// Name of Tenant. This name is used only in the case of Per-Application Deployment. If it is not provided, then a random name would be generated.
  final pulumi.Input<String>? tenantName;

  /// Creates a new [As3State].
  /// [applicationList] List of applications currently deployed on the Big-Ip
  /// [as3Json] Path/Filename of Declarative AS3 JSON which is a json file used with builtin ```file``` function
  /// [controls] A map that allows you to configure specific behavior controls for the AS3 declaration. Each key represents a particular control setting, and the corresponding value defines its configuration.
  /// [deleteApps] Block for specifying tenant name and applications to delete from BIG-IP. **Mutually exclusive with `as3_json`**: only one of `delete_apps` or `as3_json` can be set in a resource block.
  /// [ignoreMetadata] Set True if you want to ignore metadata changes during update. By default it is set to false
  /// [perAppMode] Will specify whether is deployment is done via Per-Application Way or Traditional Way
  /// [taskId] ID of AS3 post declaration async task
  /// [tenantFilter] If there are multiple tenants on a BIG-IP, this attribute helps the user to set a particular tenant to which he want to reflect the changes. Other tenants will neither be created nor be modified.
  /// [tenantList] List of tenants currently deployed on the Big-Ip
  /// [tenantName] Name of Tenant. This name is used only in the case of Per-Application Deployment. If it is not provided, then a random name would be generated.
  const As3State({
    this.applicationList,
    this.as3Json,
    this.controls,
    this.deleteApps,
    this.ignoreMetadata,
    this.perAppMode,
    this.taskId,
    this.tenantFilter,
    this.tenantList,
    this.tenantName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationList': ?applicationList,
      'as3Json': ?as3Json,
      'controls': ?controls,
      'deleteApps': ?pulumi.Input.mapOptionalInputValue<As3DeleteApps, Map<String, dynamic>>(deleteApps, (value) => value.toMap()),
      'ignoreMetadata': ?ignoreMetadata,
      'perAppMode': ?perAppMode,
      'taskId': ?taskId,
      'tenantFilter': ?tenantFilter,
      'tenantList': ?tenantList,
      'tenantName': ?tenantName,
    };
  }

  factory As3State.fromMap(Map<String, dynamic> map) {
    return As3State(
      applicationList: (() { final guardedValue = map['applicationList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      as3Json: (() { final guardedValue = map['as3Json']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      controls: (() { final guardedValue = map['controls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deleteApps: (() { final guardedValue = map['deleteApps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(As3DeleteApps.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ignoreMetadata: (() { final guardedValue = map['ignoreMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      perAppMode: (() { final guardedValue = map['perAppMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      taskId: (() { final guardedValue = map['taskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantFilter: (() { final guardedValue = map['tenantFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantList: (() { final guardedValue = map['tenantList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantName: (() { final guardedValue = map['tenantName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

