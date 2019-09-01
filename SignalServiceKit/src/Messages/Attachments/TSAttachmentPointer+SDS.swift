//
//  Copyright (c) 2019 Open Whisper Systems. All rights reserved.
//

import Foundation
import GRDB
import SignalCoreKit

// NOTE: This file is generated by /Scripts/sds_codegen/sds_generate.py.
// Do not manually edit it, instead run `sds_codegen.sh`.

// MARK: - Typed Convenience Methods

@objc
public extension TSAttachmentPointer {
    // NOTE: This method will fail if the object has unexpected type.
    class func anyFetchAttachmentPointer(uniqueId: String,
                                   transaction: SDSAnyReadTransaction) -> TSAttachmentPointer? {
        assert(uniqueId.count > 0)

        guard let object = anyFetch(uniqueId: uniqueId,
                                    transaction: transaction) else {
                                        return nil
        }
        guard let instance = object as? TSAttachmentPointer else {
            owsFailDebug("Object has unexpected type: \(type(of: object))")
            return nil
        }
        return instance
    }

    // NOTE: This method will fail if the object has unexpected type.
    func anyUpdateAttachmentPointer(transaction: SDSAnyWriteTransaction, block: (TSAttachmentPointer) -> Void) {
        anyUpdate(transaction: transaction) { (object) in
            guard let instance = object as? TSAttachmentPointer else {
                owsFailDebug("Object has unexpected type: \(type(of: object))")
                return
            }
            block(instance)
        }
    }
}

// MARK: - SDSSerializer

// The SDSSerializer protocol specifies how to insert and update the
// row that corresponds to this model.
class TSAttachmentPointerSerializer: SDSSerializer {

    private let model: TSAttachmentPointer
    public required init(model: TSAttachmentPointer) {
        self.model = model
    }

    // MARK: - Record

    func asRecord() throws -> SDSRecord {
        let id: Int64? = nil

        let recordType: SDSRecordType = .attachmentPointer
        let uniqueId: String = model.uniqueId

        // Base class properties
        let albumMessageId: String? = model.albumMessageId
        let attachmentSchemaVersion: UInt = model.attachmentSchemaVersion
        let attachmentType: TSAttachmentType = model.attachmentType
        let byteCount: UInt32 = model.byteCount
        let caption: String? = model.caption
        let contentType: String = model.contentType
        let encryptionKey: Data? = model.encryptionKey
        let isDownloaded: Bool = model.isDownloaded
        let serverId: UInt64 = model.serverId
        let sourceFilename: String? = model.sourceFilename

        // Subclass properties
        let cachedAudioDurationSeconds: Double? = nil
        let cachedImageHeight: Double? = nil
        let cachedImageWidth: Double? = nil
        let creationTimestamp: Date? = nil
        let digest: Data? = model.digest
        let isUploaded: Bool? = nil
        let isValidImageCached: Bool? = nil
        let isValidVideoCached: Bool? = nil
        let lazyRestoreFragmentId: String? = model.lazyRestoreFragmentId
        let localRelativeFilePath: String? = nil
        let mediaSize: Data? = optionalArchive(model.mediaSize)
        let mostRecentFailureLocalizedText: String? = model.mostRecentFailureLocalizedText
        let pointerType: TSAttachmentPointerType? = model.pointerType
        let shouldAlwaysPad: Bool? = nil
        let state: TSAttachmentPointerState? = model.state

        return AttachmentRecord(id: id, recordType: recordType, uniqueId: uniqueId, albumMessageId: albumMessageId, attachmentSchemaVersion: attachmentSchemaVersion, attachmentType: attachmentType, byteCount: byteCount, caption: caption, contentType: contentType, encryptionKey: encryptionKey, isDownloaded: isDownloaded, serverId: serverId, sourceFilename: sourceFilename, cachedAudioDurationSeconds: cachedAudioDurationSeconds, cachedImageHeight: cachedImageHeight, cachedImageWidth: cachedImageWidth, creationTimestamp: creationTimestamp, digest: digest, isUploaded: isUploaded, isValidImageCached: isValidImageCached, isValidVideoCached: isValidVideoCached, lazyRestoreFragmentId: lazyRestoreFragmentId, localRelativeFilePath: localRelativeFilePath, mediaSize: mediaSize, mostRecentFailureLocalizedText: mostRecentFailureLocalizedText, pointerType: pointerType, shouldAlwaysPad: shouldAlwaysPad, state: state)
    }
}
