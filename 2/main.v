import vweb

struct App {
    vweb.Context
}

fn main() {
	vweb.run(&App{}, 5500)
}
["/hello/:name"]
fn (mut app App) hello(name string) vweb.Result {
	return app.text('Hello + $name')
}