import SwiftGodot

@Godot
class SpinningCube: Node3D {
	public override func _ready() {
		let meshRenderer = MeshInstance3D()
		meshRenderer.mesh = BoxMesh()
		addChild(node: meshRenderer)
	}

	public override func _process(delta: Double) {
		rotateY(angle: delta)
	}
}
