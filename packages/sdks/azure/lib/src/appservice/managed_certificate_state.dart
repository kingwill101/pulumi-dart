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
    pulumi.Output<String>? canonicalName,
    pulumi.Output<String>? customHostnameBindingId,
    pulumi.Output<String>? expirationDate,
    pulumi.Output<String>? friendlyName,
    pulumi.Output<List<String>>? hostNames,
    pulumi.Output<String>? issueDate,
    pulumi.Output<String>? issuer,
    pulumi.Output<String>? subjectName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? thumbprint,
  }) :
      canonicalName = pulumi.Input.asOptionalInput<String>(canonicalName),
      customHostnameBindingId = pulumi.Input.asOptionalInput<String>(customHostnameBindingId),
      expirationDate = pulumi.Input.asOptionalInput<String>(expirationDate),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      hostNames = pulumi.Input.asOptionalInput<List<String>>(hostNames),
      issueDate = pulumi.Input.asOptionalInput<String>(issueDate),
      issuer = pulumi.Input.asOptionalInput<String>(issuer),
      subjectName = pulumi.Input.asOptionalInput<String>(subjectName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      thumbprint = pulumi.Input.asOptionalInput<String>(thumbprint);

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
      canonicalName: map['canonicalName'] == null ? null : pulumi.Output.create<String>(map['canonicalName'] as String),
      customHostnameBindingId: map['customHostnameBindingId'] == null ? null : pulumi.Output.create<String>(map['customHostnameBindingId'] as String),
      expirationDate: map['expirationDate'] == null ? null : pulumi.Output.create<String>(map['expirationDate'] as String),
      friendlyName: map['friendlyName'] == null ? null : pulumi.Output.create<String>(map['friendlyName'] as String),
      hostNames: map['hostNames'] == null ? null : pulumi.Output.create<List<String>>((map['hostNames'] as List).cast<String>()),
      issueDate: map['issueDate'] == null ? null : pulumi.Output.create<String>(map['issueDate'] as String),
      issuer: map['issuer'] == null ? null : pulumi.Output.create<String>(map['issuer'] as String),
      subjectName: map['subjectName'] == null ? null : pulumi.Output.create<String>(map['subjectName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      thumbprint: map['thumbprint'] == null ? null : pulumi.Output.create<String>(map['thumbprint'] as String),
    );
  }
}

