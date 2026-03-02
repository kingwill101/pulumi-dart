// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_big_iq_as3_big_iq_as3_args_doc}
/// The set of arguments for BigIqAs3.
/// {@endtemplate}
/// {@macro pulumi_index_big_iq_as3_big_iq_as3_args_doc}
class BigIqAs3Args {
  /// Path/Filename of Declarative AS3 JSON which is a json file used with builtin ```file``` function
  final pulumi.Input<String> as3Json;
  /// Address of the BIG-IQ to which your targer BIG-IP is attached
  final pulumi.Input<String> bigiqAddress;
  /// BIGIQ Login reference for token authentication
  final pulumi.Input<String>? bigiqLoginRef;
  /// Password of the BIG-IQ to which your targer BIG-IP is attached
  final pulumi.Input<String> bigiqPassword;
  /// type `int`, BIGIQ License Manager Port number, specify if port is other than `443`
  final pulumi.Input<String>? bigiqPort;
  /// type `bool`, if set to `true` enables Token based Authentication,default is `false`
  final pulumi.Input<bool>? bigiqTokenAuth;
  /// User name  of the BIG-IQ to which your targer BIG-IP is attached
  final pulumi.Input<String> bigiqUser;
  /// Set True if you want to ignore metadata changes during update. By default it is set to `true`
  ///
  /// * `bigiq_example.json` - Example  AS3 Declarative JSON file
  ///
  /// ```json
  /// {
  /// "class": "AS3",
  /// "action": "deploy",
  /// "persist": true,
  /// "declaration": {
  /// "class": "ADC",
  /// "schemaVersion": "3.7.0",
  /// "id": "example-declaration-01",
  /// "label": "Task1",
  /// "remark": "Task 1 - HTTP Application Service",
  /// "target": {
  /// "address": "xx.xxx.xx.xxx"
  /// },
  /// "Task1": {
  /// "class": "Tenant",
  /// "MyWebApp1http": {
  /// "class": "Application",
  /// "template": "http",
  ///
  ///
  /// "serviceMain": {
  /// "class": "Service_HTTP",
  /// "virtualAddresses": [
  /// "10.1.2.10"
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
  /// "192.0.2.33",
  /// "192.0.2.13"
  /// ],
  /// "shareNodes": true
  /// }
  /// ]
  /// }
  /// }
  /// }
  /// }
  /// }
  /// ```
  ///
  /// * `AS3 documentation` - https://clouddocs.f5.com/products/extensions/f5-appsvcs-extension/latest/userguide/big-iq.html
  ///
  /// >  **Note:** This resource does not support `teanat_filter` parameter as BIG-IP As3 resource
  final pulumi.Input<bool>? ignoreMetadata;
  /// Name of Tenant
  final pulumi.Input<String>? tenantList;

  /// Creates a new [BigIqAs3Args].
  /// [as3Json] Path/Filename of Declarative AS3 JSON which is a json file used with builtin ```file``` function
  /// [bigiqAddress] Address of the BIG-IQ to which your targer BIG-IP is attached
  /// [bigiqLoginRef] BIGIQ Login reference for token authentication
  /// [bigiqPassword] Password of the BIG-IQ to which your targer BIG-IP is attached
  /// [bigiqPort] type `int`, BIGIQ License Manager Port number, specify if port is other than `443`
  /// [bigiqTokenAuth] type `bool`, if set to `true` enables Token based Authentication,default is `false`
  /// [bigiqUser] User name  of the BIG-IQ to which your targer BIG-IP is attached
  /// [ignoreMetadata] Set True if you want to ignore metadata changes during update. By default it is set to `true`
  /// [tenantList] Name of Tenant
  BigIqAs3Args({
    required this.as3Json,
    required this.bigiqAddress,
    this.bigiqLoginRef,
    required this.bigiqPassword,
    this.bigiqPort,
    this.bigiqTokenAuth,
    required this.bigiqUser,
    this.ignoreMetadata,
    this.tenantList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'as3Json': as3Json,
      'bigiqAddress': bigiqAddress,
      'bigiqLoginRef': ?bigiqLoginRef,
      'bigiqPassword': bigiqPassword,
      'bigiqPort': ?bigiqPort,
      'bigiqTokenAuth': ?bigiqTokenAuth,
      'bigiqUser': bigiqUser,
      'ignoreMetadata': ?ignoreMetadata,
      'tenantList': ?tenantList,
    };
  }

  factory BigIqAs3Args.fromMap(Map<String, dynamic> map) {
    return BigIqAs3Args(
      as3Json: (map['as3Json'] as String).input(),
      bigiqAddress: (map['bigiqAddress'] as String).input(),
      bigiqLoginRef: map['bigiqLoginRef'] == null ? null : (map['bigiqLoginRef']! as String).input(),
      bigiqPassword: (map['bigiqPassword'] as String).input(),
      bigiqPort: map['bigiqPort'] == null ? null : (map['bigiqPort']! as String).input(),
      bigiqTokenAuth: map['bigiqTokenAuth'] == null ? null : (map['bigiqTokenAuth']! as bool).input(),
      bigiqUser: (map['bigiqUser'] as String).input(),
      ignoreMetadata: map['ignoreMetadata'] == null ? null : (map['ignoreMetadata']! as bool).input(),
      tenantList: map['tenantList'] == null ? null : (map['tenantList']! as String).input(),
    );
  }
}

