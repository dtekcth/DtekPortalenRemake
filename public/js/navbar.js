var NavbarItem = React.createClass({displayName: "NavbarItem",
    render: function() {
        return (
            React.createElement("li", {className: "navbar-item menu-item"}, 
                React.createElement("a", {href: this.props.route}, " ", this.props.name, " ")
            )
        );
    }
});

var NavbarView = React.createClass({displayName: "NavbarView",
    getInitialState: function() {
        return { items: [] }
    },

    componentDidMount: function() {
        this.fetchItems();
    },

    fetchItems: function() {
        $.ajax({
            url: '/nav/get',
            dataType: 'json',
            cache: true,
            success: function(items) {
                this.setState({ items: items });
            }.bind(this),
            error: function(xhr, status, err) {
                console.error('/nav/get', status, err.toString());
            }
        });
    },

    render: function() {
        var itemNodes = this.state.items.map(function(item) {
            return (
                React.createElement(NavbarItem, {route: item.route, name: item.name})
            );
        });

        return (
            React.createElement("nav", {className: "navbar"}, 
                React.createElement("ul", {className: "u-pull-right navbar-list menu"}, 
                    itemNodes
                )
            )
        );
    },
});

// Render the top navbar
React.render(
    React.createElement(NavbarView, null),
    document.getElementById('navbar')
);
