// Auto-generated. Do not edit!

// (in-package mcity_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Control {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.count = null;
      this.brake_cmd = null;
      this.throttle_cmd = null;
      this.steering_cmd = null;
      this.gear_cmd = null;
      this.turn_signal_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0.0;
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('brake_cmd')) {
        this.brake_cmd = initObj.brake_cmd
      }
      else {
        this.brake_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('throttle_cmd')) {
        this.throttle_cmd = initObj.throttle_cmd
      }
      else {
        this.throttle_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('steering_cmd')) {
        this.steering_cmd = initObj.steering_cmd
      }
      else {
        this.steering_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('gear_cmd')) {
        this.gear_cmd = initObj.gear_cmd
      }
      else {
        this.gear_cmd = 0;
      }
      if (initObj.hasOwnProperty('turn_signal_cmd')) {
        this.turn_signal_cmd = initObj.turn_signal_cmd
      }
      else {
        this.turn_signal_cmd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Control
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.int32(obj.count, buffer, bufferOffset);
    // Serialize message field [brake_cmd]
    bufferOffset = _serializer.float64(obj.brake_cmd, buffer, bufferOffset);
    // Serialize message field [throttle_cmd]
    bufferOffset = _serializer.float64(obj.throttle_cmd, buffer, bufferOffset);
    // Serialize message field [steering_cmd]
    bufferOffset = _serializer.float64(obj.steering_cmd, buffer, bufferOffset);
    // Serialize message field [gear_cmd]
    bufferOffset = _serializer.int16(obj.gear_cmd, buffer, bufferOffset);
    // Serialize message field [turn_signal_cmd]
    bufferOffset = _serializer.int16(obj.turn_signal_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Control
    let len;
    let data = new Control(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [brake_cmd]
    data.brake_cmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [throttle_cmd]
    data.throttle_cmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steering_cmd]
    data.steering_cmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gear_cmd]
    data.gear_cmd = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [turn_signal_cmd]
    data.turn_signal_cmd = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mcity_msg/Control';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8991eb8db72ef6936a21cd28b0eaadf3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float64 timestamp
    int32 	count
    float64 brake_cmd
    float64 throttle_cmd
    float64 steering_cmd
    int16 	gear_cmd
    int16 	turn_signal_cmd
    
     
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Control(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0.0
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.brake_cmd !== undefined) {
      resolved.brake_cmd = msg.brake_cmd;
    }
    else {
      resolved.brake_cmd = 0.0
    }

    if (msg.throttle_cmd !== undefined) {
      resolved.throttle_cmd = msg.throttle_cmd;
    }
    else {
      resolved.throttle_cmd = 0.0
    }

    if (msg.steering_cmd !== undefined) {
      resolved.steering_cmd = msg.steering_cmd;
    }
    else {
      resolved.steering_cmd = 0.0
    }

    if (msg.gear_cmd !== undefined) {
      resolved.gear_cmd = msg.gear_cmd;
    }
    else {
      resolved.gear_cmd = 0
    }

    if (msg.turn_signal_cmd !== undefined) {
      resolved.turn_signal_cmd = msg.turn_signal_cmd;
    }
    else {
      resolved.turn_signal_cmd = 0
    }

    return resolved;
    }
};

module.exports = Control;
