Meteor.startup () ->
	AdminDashboard.addSidebarItem 'Editors',
		icon: 'pencil'
		urls: [
			{
				title: 'CKEditor'
				url: AdminDashboard.path('/editors/ckeditor')
			}
		]
	AdminDashboard.addSidebarItem 'Components',
		icon: 'gear'
		urls: [
			{
				title: 'Tree View'
				url: AdminDashboard.path('/components/treeview')
			}
		]
	AdminDashboard.addSidebarItem 'Charts',
		icon: 'bar-chart'
		urls: [
			{
				title: 'Chartist.Js'
				url: AdminDashboard.path('/charts/chartist-js')
			}
		]
	AdminDashboard.addSidebarItem 'UI Features',
		icon: 'laptop'
		urls: [
			{
				title: 'Typography'
				url: AdminDashboard.path('/ui/typography')
			}
			{
				title: 'Buttons'
				url: AdminDashboard.path('/ui/buttons')
			}
			{
				title: 'Icons'
				url: AdminDashboard.path('/ui/icons')
			}
			{
				title: 'Modals'
				url: AdminDashboard.path('/ui/modals')
			}
			{
				title: 'Grid'
				url: AdminDashboard.path('/ui/grid')
			}
		]
	AdminDashboard.addSidebarItem 'Form Elements',
		icon: 'edit'
		urls: [
			{
				title: 'Form Inputs'
				url: AdminDashboard.path('/forms/inputs')
			}
			{
				title: 'Form Layouts'
				url: AdminDashboard.path('/forms/layouts')
			}
		]
	AdminDashboard.addSidebarItem 'Tables',
		icon: 'th'
		urls: [
			{
				title: 'Basic Tables'
				url: AdminDashboard.path('/tables/basictables')
			}
			{
				title: 'Smart Tables'
				url: AdminDashboard.path('/tables/smarttables')
			}
		]
	AdminDashboard.addSidebarItem 'Maps',
		icon: 'map-marker'
		urls: [
			{
				title: 'Google Maps'
				url: AdminDashboard.path('/maps/googlemaps')
			}
			{
				title: 'Leaflet Maps'
				url: AdminDashboard.path('/maps/leafletmaps')
			}
			{
				title: 'Bubble Maps'
				url: AdminDashboard.path('/maps/bubblemaps')
			}
			{
				title: 'Line Maps'
				url: AdminDashboard.path('/maps/linemaps')
			}
		]
	AdminDashboard.addSidebarItem 'Pages',
		icon: 'file-o'
		urls: [
			{
				title: 'Login'
				url: AdminDashboard.path('/login')
			}
			{
				title: 'Register'
				url: AdminDashboard.path('/register')
			}
		]
	AdminDashboard.addSidebarItem 'Menu Level1',
		icon: 'ellipsis-h'
		urls: [
			{
				title: 'Menu Level1.1'
				url: AdminDashboard.path('/')
			}
			{
				title: 'Menu Level1.2'
				url: AdminDashboard.path('/')
			}
		]
	AdminDashboard.addSidebarItem 'External Link', AdminDashboard.path('akveo.com'), icon: 'sign-in'