var NavbarItem = React.createClass({
    render: function() {
        return (
            <li className="navbar-item menu-item">
                <a href={this.props.route}> {this.props.name} </a>
            </li>
        );
    }
});

var NavbarView = React.createClass({
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
                <NavbarItem route={item.route} name={item.name} />
            );
        });

        return (
            <nav className="navbar">
                <ul className="u-pull-right navbar-list menu">
                    {itemNodes}
                </ul>
            </nav>
        );
    },
});

// Render the top navbar
React.render(
    <NavbarView />,
    document.getElementById('navbar')
);
