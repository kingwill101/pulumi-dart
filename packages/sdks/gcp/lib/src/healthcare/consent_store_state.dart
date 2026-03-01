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
    pulumi.Output<String>? dataset,
    pulumi.Output<String>? defaultConsentTtl,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<bool>? enableConsentCreateOnUpdate,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? pulumiLabels,
  }) :
      dataset = pulumi.Input.asOptionalInput<String>(dataset),
      defaultConsentTtl = pulumi.Input.asOptionalInput<String>(defaultConsentTtl),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      enableConsentCreateOnUpdate = pulumi.Input.asOptionalInput<bool>(enableConsentCreateOnUpdate),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels);

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
      dataset: map['dataset'] == null ? null : pulumi.Output.create<String>(map['dataset'] as String),
      defaultConsentTtl: map['defaultConsentTtl'] == null ? null : pulumi.Output.create<String>(map['defaultConsentTtl'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      enableConsentCreateOnUpdate: map['enableConsentCreateOnUpdate'] == null ? null : pulumi.Output.create<bool>(map['enableConsentCreateOnUpdate'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
    );
  }
}

