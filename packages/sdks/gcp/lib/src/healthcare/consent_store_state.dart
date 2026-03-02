// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ConsentStore resources.
class ConsentStoreState {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  final pulumi.Input<String>? dataset;
  /// Default time to live for consents in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String>? defaultConsentTtl;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
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
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Creates a new [ConsentStoreState].
  /// [dataset] Identifies the dataset addressed by this request. Must be in the format
  /// [defaultConsentTtl] Default time to live for consents in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [enableConsentCreateOnUpdate] If true, [consents.patch] [google.cloud.healthcare.v1.consent.UpdateConsent] creates the consent if it does not already exist.
  /// [labels] User-supplied key-value pairs used to organize Consent stores.
  /// [name] The name of this ConsentStore, for example:
  /// [pulumiLabels] The combination of labels configured directly on the resource
  ConsentStoreState({
    this.dataset,
    this.defaultConsentTtl,
    this.effectiveLabels,
    this.enableConsentCreateOnUpdate,
    this.labels,
    this.name,
    this.pulumiLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?dataset,
      'defaultConsentTtl': ?defaultConsentTtl,
      'effectiveLabels': ?effectiveLabels,
      'enableConsentCreateOnUpdate': ?enableConsentCreateOnUpdate,
      'labels': ?labels,
      'name': ?name,
      'pulumiLabels': ?pulumiLabels,
    };
  }

  factory ConsentStoreState.fromMap(Map<String, dynamic> map) {
    return ConsentStoreState(
      dataset: map['dataset'] == null ? null : (map['dataset']! as String).input(),
      defaultConsentTtl: map['defaultConsentTtl'] == null ? null : (map['defaultConsentTtl']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      enableConsentCreateOnUpdate: map['enableConsentCreateOnUpdate'] == null ? null : (map['enableConsentCreateOnUpdate']! as bool).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
    );
  }
}

