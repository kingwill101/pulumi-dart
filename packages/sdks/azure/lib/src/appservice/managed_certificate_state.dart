// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedCertificate resources.
class ManagedCertificateState {
  /// The Canonical Name of the Certificate.
  final pulumi.Input<String>? canonicalName;
  /// The ID of the App Service Custom Hostname Binding for the Certificate. Changing this forces a new App Service Managed Certificate to be created.
  final pulumi.Input<String>? customHostnameBindingId;
  /// The expiration date of the Certificate.
  final pulumi.Input<String>? expirationDate;
  /// The friendly name of the Certificate.
  final pulumi.Input<String>? friendlyName;
  /// The list of Host Names for the Certificate.
  final pulumi.Input<List<String>>? hostNames;
  /// The Start date for the Certificate.
  final pulumi.Input<String>? issueDate;
  /// The issuer of the Certificate.
  final pulumi.Input<String>? issuer;
  /// The Subject Name for the Certificate.
  final pulumi.Input<String>? subjectName;
  /// A mapping of tags which should be assigned to the App Service Managed Certificate.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Certificate Thumbprint.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [ManagedCertificateState].
  /// [canonicalName] The Canonical Name of the Certificate.
  /// [customHostnameBindingId] The ID of the App Service Custom Hostname Binding for the Certificate. Changing this forces a new App Service Managed Certificate to be created.
  /// [expirationDate] The expiration date of the Certificate.
  /// [friendlyName] The friendly name of the Certificate.
  /// [hostNames] The list of Host Names for the Certificate.
  /// [issueDate] The Start date for the Certificate.
  /// [issuer] The issuer of the Certificate.
  /// [subjectName] The Subject Name for the Certificate.
  /// [tags] A mapping of tags which should be assigned to the App Service Managed Certificate.
  /// [thumbprint] The Certificate Thumbprint.
  ManagedCertificateState({
    this.canonicalName,
    this.customHostnameBindingId,
    this.expirationDate,
    this.friendlyName,
    this.hostNames,
    this.issueDate,
    this.issuer,
    this.subjectName,
    this.tags,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalName': ?canonicalName,
      'customHostnameBindingId': ?customHostnameBindingId,
      'expirationDate': ?expirationDate,
      'friendlyName': ?friendlyName,
      'hostNames': ?hostNames,
      'issueDate': ?issueDate,
      'issuer': ?issuer,
      'subjectName': ?subjectName,
      'tags': ?tags,
      'thumbprint': ?thumbprint,
    };
  }

  factory ManagedCertificateState.fromMap(Map<String, dynamic> map) {
    return ManagedCertificateState(
      canonicalName: map['canonicalName'] == null ? null : (map['canonicalName']! as String).input(),
      customHostnameBindingId: map['customHostnameBindingId'] == null ? null : (map['customHostnameBindingId']! as String).input(),
      expirationDate: map['expirationDate'] == null ? null : (map['expirationDate']! as String).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName']! as String).input(),
      hostNames: map['hostNames'] == null ? null : ((map['hostNames']! as List).cast<String>()).input(),
      issueDate: map['issueDate'] == null ? null : (map['issueDate']! as String).input(),
      issuer: map['issuer'] == null ? null : (map['issuer']! as String).input(),
      subjectName: map['subjectName'] == null ? null : (map['subjectName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint']! as String).input(),
    );
  }
}

