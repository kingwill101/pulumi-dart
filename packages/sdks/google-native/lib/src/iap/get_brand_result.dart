// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBrand.
class GetBrandResult {
  /// Application name displayed on OAuth consent screen.
  final String? applicationTitle;
  /// Identifier of the brand. NOTE: GCP project number achieves the same brand identification purpose as only one brand per project can be created.
  final String? name;
  /// Whether the brand is only intended for usage inside the G Suite organization only.
  final bool? orgInternalOnly;
  /// Support email displayed on the OAuth consent screen.
  final String? supportEmail;

  /// Creates a new [GetBrandResult].
  /// [applicationTitle] Application name displayed on OAuth consent screen.
  /// [name] Identifier of the brand. NOTE: GCP project number achieves the same brand identification purpose as only one brand per project can be created.
  /// [orgInternalOnly] Whether the brand is only intended for usage inside the G Suite organization only.
  /// [supportEmail] Support email displayed on the OAuth consent screen.
  const GetBrandResult({
    this.applicationTitle,
    this.name,
    this.orgInternalOnly,
    this.supportEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationTitle': ?applicationTitle,
      'name': ?name,
      'orgInternalOnly': ?orgInternalOnly,
      'supportEmail': ?supportEmail,
    };
  }

  factory GetBrandResult.fromMap(Map<String, dynamic> map) {
    return GetBrandResult(
      applicationTitle: (() { final guardedValue = map['applicationTitle']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orgInternalOnly: (() { final guardedValue = map['orgInternalOnly']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      supportEmail: (() { final guardedValue = map['supportEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
