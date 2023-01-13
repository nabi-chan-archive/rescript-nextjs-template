%%raw("import 'styles/tailwind.css'")
type layoutProps = {children: React.element}

let default = (props: layoutProps) => {
  <html>
    <head />
    <body> props.children </body>
  </html>
}
