import React, {Component} from 'react'
import ReactNative from 'react-native'
import resolveAssetSource from "resolveAssetSource";
import PropTypes from "prop-types"

const ApngPlayerNative = ReactNative.requireNativeComponent("ApngPlayer", ApngPlayer);

export default class ApngPlayer extends Component {
    static propTypes = {
        source: PropTypes.number.isRequired,
        scale: PropTypes.number.isRequired
    };

    render() {
        const source = resolveAssetSource(this.props.source);
        React.createElement(ApngPlayerNative, {
            style: {width: source.width * this.props.scale, height: source.height * this.props.scale},
            source: source.uri
        });
    }
}
