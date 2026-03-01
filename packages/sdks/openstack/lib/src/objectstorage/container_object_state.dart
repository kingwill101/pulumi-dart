// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ContainerObject resources.
class ContainerObjectState {
  /// A unique (within an account) name for the container.
  /// The container name must be from 1 to 256 characters long and can start
  /// with any character and contain any pattern. Character set must be UTF-8.
  /// The container name cannot contain a slash (/) character because this
  /// character delimits the container and object name. For example, the path
  /// /v1/account/www/pages specifies the www container, not the www/pages container.
  final pulumi.Input<String>? containerName;
  /// A string representing the content of the object. Conflicts with
  /// `source` and `copy_from`.
  final pulumi.Input<String>? content;
  /// A string which specifies the override behavior for
  /// the browser. For example, this header might specify that the browser use a download
  /// program to save this file rather than show the file, which is the default.
  final pulumi.Input<String>? contentDisposition;
  /// A string representing the value of the Content-Encoding
  /// metadata.
  final pulumi.Input<String>? contentEncoding;
  /// If the operation succeeds, this value is zero (0) or the
  /// length of informational or error text in the response body.
  final pulumi.Input<int>? contentLength;
  /// A string which sets the MIME type for the object.
  final pulumi.Input<String>? contentType;
  /// A string representing the name of an object
  /// used to create the new object by copying the `copy_from` object. The value is in form
  /// {container}/{object}. You must UTF-8-encode and then URL-encode the names of the
  /// container and object before you include them in the header. Conflicts with `source` and
  /// `content`.
  final pulumi.Input<String>? copyFrom;
  /// The date and time the system responded to the request, using the preferred
  /// format of RFC 7231 as shown in this example Thu, 16 Jun 2016 15:10:38 GMT. The
  /// time is always in UTC.
  final pulumi.Input<String>? date;
  /// An integer representing the number of seconds after which the
  /// system removes the object. Internally, the Object Storage system stores this value in
  /// the X-Delete-At metadata item.
  final pulumi.Input<int>? deleteAfter;
  /// An string representing the date when the system removes the object.
  /// For example, "2015-08-26" is equivalent to Mon, Wed, 26 Aug 2015 00:00:00 GMT.
  final pulumi.Input<String>? deleteAt;
  /// If set to true, Object Storage guesses the content
  /// type based on the file extension and ignores the value sent in the Content-Type
  /// header, if present.
  final pulumi.Input<bool>? detectContentType;
  /// Used to trigger updates. The only meaningful value is ${md5(file("path/to/file"))}.
  final pulumi.Input<String>? etag;
  /// The date and time when the object was last modified. The date and time
  /// stamp format is ISO 8601:
  /// CCYY-MM-DDThh:mm:ss±hh:mm
  /// For example, 2015-08-27T09:49:58-05:00.
  /// The ±hh:mm value, if included, is the time zone as an offset from UTC. In the previous
  /// example, the offset value is -05:00.
  final pulumi.Input<String>? lastModified;
  final pulumi.Input<Map<String, String>>? metadata;
  /// A unique name for the object.
  final pulumi.Input<String>? name;
  /// A string set to specify that this is a dynamic large
  /// object manifest object. The value is the container and object name prefix of the
  /// segment objects in the form container/prefix. You must UTF-8-encode and then
  /// URL-encode the names of the container and prefix before you include them in this
  /// header.
  final pulumi.Input<String>? objectManifest;
  /// The region in which to create the container. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new container.
  final pulumi.Input<String>? region;
  /// A string representing the local path of a file which will be used
  /// as the object's content. Conflicts with `source` and `copy_from`.
  final pulumi.Input<String>? source;
  /// A unique transaction ID for this request. Your service provider might
  /// need this value if you report a problem.
  final pulumi.Input<String>? transId;

  /// Creates a new [ContainerObjectState].
  /// [containerName] A unique (within an account) name for the container.
  /// [content] A string representing the content of the object. Conflicts with
  /// [contentDisposition] A string which specifies the override behavior for
  /// [contentEncoding] A string representing the value of the Content-Encoding
  /// [contentLength] If the operation succeeds, this value is zero (0) or the
  /// [contentType] A string which sets the MIME type for the object.
  /// [copyFrom] A string representing the name of an object
  /// [date] The date and time the system responded to the request, using the preferred
  /// [deleteAfter] An integer representing the number of seconds after which the
  /// [deleteAt] An string representing the date when the system removes the object.
  /// [detectContentType] If set to true, Object Storage guesses the content
  /// [etag] Used to trigger updates. The only meaningful value is ${md5(file("path/to/file"))}.
  /// [lastModified] The date and time when the object was last modified. The date and time
  /// [metadata] Optional.
  /// [name] A unique name for the object.
  /// [objectManifest] A string set to specify that this is a dynamic large
  /// [region] The region in which to create the container. If
  /// [source] A string representing the local path of a file which will be used
  /// [transId] A unique transaction ID for this request. Your service provider might
  ContainerObjectState({
    pulumi.Output<String>? containerName,
    pulumi.Output<String>? content,
    pulumi.Output<String>? contentDisposition,
    pulumi.Output<String>? contentEncoding,
    pulumi.Output<int>? contentLength,
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? copyFrom,
    pulumi.Output<String>? date,
    pulumi.Output<int>? deleteAfter,
    pulumi.Output<String>? deleteAt,
    pulumi.Output<bool>? detectContentType,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? lastModified,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? objectManifest,
    pulumi.Output<String>? region,
    pulumi.Output<String>? source,
    pulumi.Output<String>? transId,
  }) :
      containerName = pulumi.Input.asOptionalInput<String>(containerName),
      content = pulumi.Input.asOptionalInput<String>(content),
      contentDisposition = pulumi.Input.asOptionalInput<String>(contentDisposition),
      contentEncoding = pulumi.Input.asOptionalInput<String>(contentEncoding),
      contentLength = pulumi.Input.asOptionalInput<int>(contentLength),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      copyFrom = pulumi.Input.asOptionalInput<String>(copyFrom),
      date = pulumi.Input.asOptionalInput<String>(date),
      deleteAfter = pulumi.Input.asOptionalInput<int>(deleteAfter),
      deleteAt = pulumi.Input.asOptionalInput<String>(deleteAt),
      detectContentType = pulumi.Input.asOptionalInput<bool>(detectContentType),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      lastModified = pulumi.Input.asOptionalInput<String>(lastModified),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      objectManifest = pulumi.Input.asOptionalInput<String>(objectManifest),
      region = pulumi.Input.asOptionalInput<String>(region),
      source = pulumi.Input.asOptionalInput<String>(source),
      transId = pulumi.Input.asOptionalInput<String>(transId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'content': ?content,
      'contentDisposition': ?contentDisposition,
      'contentEncoding': ?contentEncoding,
      'contentLength': ?contentLength,
      'contentType': ?contentType,
      'copyFrom': ?copyFrom,
      'date': ?date,
      'deleteAfter': ?deleteAfter,
      'deleteAt': ?deleteAt,
      'detectContentType': ?detectContentType,
      'etag': ?etag,
      'lastModified': ?lastModified,
      'metadata': ?metadata,
      'name': ?name,
      'objectManifest': ?objectManifest,
      'region': ?region,
      'source': ?source,
      'transId': ?transId,
    };
  }

  factory ContainerObjectState.fromMap(Map<String, dynamic> map) {
    return ContainerObjectState(
      containerName: map['containerName'] == null ? null : pulumi.Output.create<String>(map['containerName'] as String),
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      contentDisposition: map['contentDisposition'] == null ? null : pulumi.Output.create<String>(map['contentDisposition'] as String),
      contentEncoding: map['contentEncoding'] == null ? null : pulumi.Output.create<String>(map['contentEncoding'] as String),
      contentLength: map['contentLength'] == null ? null : pulumi.Output.create<int>(map['contentLength'] as int),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      copyFrom: map['copyFrom'] == null ? null : pulumi.Output.create<String>(map['copyFrom'] as String),
      date: map['date'] == null ? null : pulumi.Output.create<String>(map['date'] as String),
      deleteAfter: map['deleteAfter'] == null ? null : pulumi.Output.create<int>(map['deleteAfter'] as int),
      deleteAt: map['deleteAt'] == null ? null : pulumi.Output.create<String>(map['deleteAt'] as String),
      detectContentType: map['detectContentType'] == null ? null : pulumi.Output.create<bool>(map['detectContentType'] as bool),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      lastModified: map['lastModified'] == null ? null : pulumi.Output.create<String>(map['lastModified'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      objectManifest: map['objectManifest'] == null ? null : pulumi.Output.create<String>(map['objectManifest'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      transId: map['transId'] == null ? null : pulumi.Output.create<String>(map['transId'] as String),
    );
  }
}

