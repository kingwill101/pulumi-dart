// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApplicationTemplate.
class GetApplicationTemplateResult {
  /// List of categories for this templated application.
  final List<String>? categories;
  /// The display name for the templated application.
  final String? displayName;
  /// Home page URL of the templated application.
  final String? homepageUrl;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// URL to retrieve the logo for this templated application.
  final String? logoUrl;
  /// Name of the publisher for this templated application.
  final String? publisher;
  /// List of provisioning modes supported by this templated application.
  final List<String>? supportedProvisioningTypes;
  /// List of single sign on modes supported by this templated application.
  final List<String>? supportedSingleSignOnModes;
  /// The ID of the templated application.
  final String? templateId;

  /// Creates a new [GetApplicationTemplateResult].
  /// [categories] List of categories for this templated application.
  /// [displayName] The display name for the templated application.
  /// [homepageUrl] Home page URL of the templated application.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [logoUrl] URL to retrieve the logo for this templated application.
  /// [publisher] Name of the publisher for this templated application.
  /// [supportedProvisioningTypes] List of provisioning modes supported by this templated application.
  /// [supportedSingleSignOnModes] List of single sign on modes supported by this templated application.
  /// [templateId] The ID of the templated application.
  const GetApplicationTemplateResult({
    this.categories,
    this.displayName,
    this.homepageUrl,
    this.id,
    this.logoUrl,
    this.publisher,
    this.supportedProvisioningTypes,
    this.supportedSingleSignOnModes,
    this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': ?categories,
      'displayName': ?displayName,
      'homepageUrl': ?homepageUrl,
      'id': ?id,
      'logoUrl': ?logoUrl,
      'publisher': ?publisher,
      'supportedProvisioningTypes': ?supportedProvisioningTypes,
      'supportedSingleSignOnModes': ?supportedSingleSignOnModes,
      'templateId': ?templateId,
    };
  }

  factory GetApplicationTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationTemplateResult(
      categories: (() { final guardedValue = map['categories']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      homepageUrl: (() { final guardedValue = map['homepageUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logoUrl: (() { final guardedValue = map['logoUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedProvisioningTypes: (() { final guardedValue = map['supportedProvisioningTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      supportedSingleSignOnModes: (() { final guardedValue = map['supportedSingleSignOnModes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
