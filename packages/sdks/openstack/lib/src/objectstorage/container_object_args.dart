// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_objectstorage_container_object_container_object_args_doc}
/// The set of arguments for ContainerObject.
/// {@endtemplate}
/// {@macro pulumi_objectstorage_container_object_container_object_args_doc}
class ContainerObjectArgs {
  /// A unique (within an account) name for the container.
  /// The container name must be from 1 to 256 characters long and can start
  /// with any character and contain any pattern. Character set must be UTF-8.
  /// The container name cannot contain a slash (/) character because this
  /// character delimits the container and object name. For example, the path
  /// /v1/account/www/pages specifies the www container, not the www/pages container.
  final pulumi.Input<String> containerName;

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

  /// A string which sets the MIME type for the object.
  final pulumi.Input<String>? contentType;

  /// A string representing the name of an object
  /// used to create the new object by copying the `copy_from` object. The value is in form
  /// {container}/{object}. You must UTF-8-encode and then URL-encode the names of the
  /// container and object before you include them in the header. Conflicts with `source` and
  /// `content`.
  final pulumi.Input<String>? copyFrom;

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

  /// Creates a new [ContainerObjectArgs].
  /// [containerName] A unique (within an account) name for the container.
  /// [content] A string representing the content of the object. Conflicts with
  /// [contentDisposition] A string which specifies the override behavior for
  /// [contentEncoding] A string representing the value of the Content-Encoding
  /// [contentType] A string which sets the MIME type for the object.
  /// [copyFrom] A string representing the name of an object
  /// [deleteAfter] An integer representing the number of seconds after which the
  /// [deleteAt] An string representing the date when the system removes the object.
  /// [detectContentType] If set to true, Object Storage guesses the content
  /// [etag] Used to trigger updates. The only meaningful value is ${md5(file("path/to/file"))}.
  /// [metadata] Optional.
  /// [name] A unique name for the object.
  /// [objectManifest] A string set to specify that this is a dynamic large
  /// [region] The region in which to create the container. If
  /// [source] A string representing the local path of a file which will be used
  ContainerObjectArgs({
    required this.containerName,
    this.content,
    this.contentDisposition,
    this.contentEncoding,
    this.contentType,
    this.copyFrom,
    this.deleteAfter,
    this.deleteAt,
    this.detectContentType,
    this.etag,
    this.metadata,
    this.name,
    this.objectManifest,
    this.region,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'content': ?content,
      'contentDisposition': ?contentDisposition,
      'contentEncoding': ?contentEncoding,
      'contentType': ?contentType,
      'copyFrom': ?copyFrom,
      'deleteAfter': ?deleteAfter,
      'deleteAt': ?deleteAt,
      'detectContentType': ?detectContentType,
      'etag': ?etag,
      'metadata': ?metadata,
      'name': ?name,
      'objectManifest': ?objectManifest,
      'region': ?region,
      'source': ?source,
    };
  }

  factory ContainerObjectArgs.fromMap(Map<String, dynamic> map) {
    return ContainerObjectArgs(
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      content: (() {
        final guardedValue = map['content'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      contentDisposition: (() {
        final guardedValue = map['contentDisposition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      contentEncoding: (() {
        final guardedValue = map['contentEncoding'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      contentType: (() {
        final guardedValue = map['contentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      copyFrom: (() {
        final guardedValue = map['copyFrom'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deleteAfter: (() {
        final guardedValue = map['deleteAfter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      deleteAt: (() {
        final guardedValue = map['deleteAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      detectContentType: (() {
        final guardedValue = map['detectContentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      objectManifest: (() {
        final guardedValue = map['objectManifest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
