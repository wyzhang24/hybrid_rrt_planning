// Auto-generated. Do not edit!

// (in-package dbw_mkz_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GearNum {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num = null;
    }
    else {
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GearNum
    // Serialize message field [num]
    bufferOffset = _serializer.uint8(obj.num, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GearNum
    let len;
    let data = new GearNum(null);
    // Deserialize message field [num]
    data.num = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dbw_mkz_msgs/GearNum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '796cf18912e88e9df4c9f138d09f2700';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 num
    
    uint8 NONE=0
    uint8 DRIVE_D01=1
    uint8 DRIVE_D02=2
    uint8 DRIVE_D03=3
    uint8 DRIVE_D04=4
    uint8 DRIVE_D05=5
    uint8 DRIVE_D06=6
    uint8 DRIVE_D07=7
    uint8 DRIVE_D08=8
    uint8 DRIVE_D09=9
    uint8 DRIVE_D10=10
    uint8 NEUTRAL=16
    uint8 REVERSE_R01=17
    uint8 REVERSE_R02=18
    uint8 PARK=31
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GearNum(null);
    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0
    }

    return resolved;
    }
};

// Constants for message
GearNum.Constants = {
  NONE: 0,
  DRIVE_D01: 1,
  DRIVE_D02: 2,
  DRIVE_D03: 3,
  DRIVE_D04: 4,
  DRIVE_D05: 5,
  DRIVE_D06: 6,
  DRIVE_D07: 7,
  DRIVE_D08: 8,
  DRIVE_D09: 9,
  DRIVE_D10: 10,
  NEUTRAL: 16,
  REVERSE_R01: 17,
  REVERSE_R02: 18,
  PARK: 31,
}

module.exports = GearNum;
