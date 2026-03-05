// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_consent_store_consent_store_args_doc}
/// The set of arguments for ConsentStore.
/// {@endtemplate}
/// {@macro pulumi_healthcare_consent_store_consent_store_args_doc}
class ConsentStoreArgs {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  final pulumi.Input<String> dataset;
  /// Default time to live for consents in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String>? defaultConsentTtl;
  /// If true, [consents.patch] [google.cloud.healthcare.v1.consent.UpdateConsent] creates the consent if it does not already exist.
  final pulumi.Input<bool>? enableConsentCreateOnUpdate;
  /// User-supplied key-value pairs used to organize Consent stores.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
  /// conform to the following PCRE regular expression: `[\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}`
  /// Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
  /// bytes, and must conform to the following PCRE regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}`
  /// No more than 64 labels can be associated with a given store.
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name of this ConsentStore, for example:
  /// "consent1"
  final pulumi.Input<String>? name;

  /// Creates a new [ConsentStoreArgs].
  /// [dataset] Identifies the dataset addressed by this request. Must be in the format
  /// [defaultConsentTtl] Default time to live for consents in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.
  /// [enableConsentCreateOnUpdate] If true, [consents.patch] [google.cloud.healthcare.v1.consent.UpdateConsent] creates the consent if it does not already exist.
  /// [labels] User-supplied key-value pairs used to organize Consent stores.
  /// [name] The name of this ConsentStore, for example:
  ConsentStoreArgs({
    required this.dataset,
    this.defaultConsentTtl,
    this.enableConsentCreateOnUpdate,
    this.labels,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset,
      'defaultConsentTtl': ?defaultConsentTtl,
      'enableConsentCreateOnUpdate': ?enableConsentCreateOnUpdate,
      'labels': ?labels,
      'name': ?name,
    };
  }

  factory ConsentStoreArgs.fromMap(Map<String, dynamic> map) {
    return ConsentStoreArgs(
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
      defaultConsentTtl: (() { final guardedValue = map['defaultConsentTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableConsentCreateOnUpdate: (() { final guardedValue = map['enableConsentCreateOnUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

