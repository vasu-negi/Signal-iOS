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
public extension OWSBroadcastMediaMessageJobRecord {
    // NOTE: This method will fail if the object has unexpected type.
    class func anyFetchBroadcastMediaMessageJobRecord(uniqueId: String,
                                   transaction: SDSAnyReadTransaction) -> OWSBroadcastMediaMessageJobRecord? {
        assert(uniqueId.count > 0)

        guard let object = anyFetch(uniqueId: uniqueId,
                                    transaction: transaction) else {
                                        return nil
        }
        guard let instance = object as? OWSBroadcastMediaMessageJobRecord else {
            owsFailDebug("Object has unexpected type: \(type(of: object))")
            return nil
        }
        return instance
    }

    // NOTE: This method will fail if the object has unexpected type.
    func anyUpdateBroadcastMediaMessageJobRecord(transaction: SDSAnyWriteTransaction, block: (OWSBroadcastMediaMessageJobRecord) -> Void) {
        anyUpdate(transaction: transaction) { (object) in
            guard let instance = object as? OWSBroadcastMediaMessageJobRecord else {
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
class OWSBroadcastMediaMessageJobRecordSerializer: SDSSerializer {

    private let model: OWSBroadcastMediaMessageJobRecord
    public required init(model: OWSBroadcastMediaMessageJobRecord) {
        self.model = model
    }

    // MARK: - Record

    func asRecord() throws -> SDSRecord {
        let id: Int64? = nil

        let recordType: SDSRecordType = .broadcastMediaMessageJobRecord
        let uniqueId: String = model.uniqueId

        // Base class properties
        let failureCount: UInt = model.failureCount
        let label: String = model.label
        let status: SSKJobRecordStatus = model.status

        // Subclass properties
        let attachmentIdMap: Data? = optionalArchive(model.attachmentIdMap)
        let contactThreadId: String? = nil
        let envelopeData: Data? = nil
        let invisibleMessage: Data? = nil
        let messageId: String? = nil
        let removeMessageAfterSending: Bool? = nil
        let threadId: String? = nil

        return JobRecordRecord(id: id, recordType: recordType, uniqueId: uniqueId, failureCount: failureCount, label: label, status: status, attachmentIdMap: attachmentIdMap, contactThreadId: contactThreadId, envelopeData: envelopeData, invisibleMessage: invisibleMessage, messageId: messageId, removeMessageAfterSending: removeMessageAfterSending, threadId: threadId)
    }
}
